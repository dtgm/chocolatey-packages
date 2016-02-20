$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$url64 = $url
$checksum64 = $checksum
$installerType = 'exe'
$silentArgs = ''
$checksumType = 'sha1'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$chocoTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocoTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$tcmdWork = Join-Path $tempDir "tcmd"
$zipFile = Join-Path $tempDir "tcmd.exe"

$arguments = @{}
$packageParameters = $env:chocolateyPackageParameters
# To override the default options set below: /localUser /desktopIcon /installPath="c:\totalcmd"
$localUser = 'UserName=*' #default: install for all users
$desktopIcon = 'mkdesktop=0' #default: no desktop icon
$installPath = '%ProgramFiles%\totalcmd'

# Parse packageParameters with regular expressions
if ($packageParameters) {
    $match_pattern = "\/(?<option>([a-zA-Z]+))=(?<value>([`"'])?([a-zA-Z0-9- _\\=\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"
    $option_name = 'option'
    $value_name = 'value'

    if ($packageParameters -match $match_pattern ){
      $results = $packageParameters | Select-String $match_pattern -AllMatches
      $results.matches | % {
        $arguments.Add(
          $_.Groups[$option_name].Value.Trim(),
          $_.Groups[$value_name].Value.Trim())
      }
    } else {
        Throw "Package Parameters were found but were invalid (REGEX Failure)"
    }

    if ($arguments.ContainsKey("LocalUser")) {
        Write-Host "Only installing for local user"
        $localUser = 'UserName='
    }

    if ($arguments.ContainsKey("DesktopIcon")) {
        Write-Host "You want a desktop icon"
        $desktopIcon = 'mkdesktop=1'
    }

    if ($arguments.ContainsKey("InstallPath")) {
        Write-Host "You want to use a custom Installation Path"
        $installPath = $arguments["InstallPath"]
    }
} else {
  Write-Debug "No Package Parameters passed in"
}

Write-Debug "This would be the Chocolatey Silent Arguments: $silentArgs"

Write-Verbose "Retrieve Total Commander data files"
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$zipFile" `
                      -Url "$url" `
                      -Url64bit "$url64" `
                      -Checksum "$checksum" `
                      -Checksum64 "$checksum64" `
                      -ChecksumType "$checksumType" `
                      -ChecksumType64 "$checksumType64"

Write-Verbose "Extract EXE to change install options"
$proc = Start-Process -FilePath "7za" `
                      -ArgumentList "x -y -o`"$tcmdWork`" `"$zipFile`"" `
                      -Wait `
                      -NoNewWindow `
                      -PassThru
$proc.WaitForExit()
$exitCode = $proc.ExitCode
if($exitCode -ne 0) {
  throw "Exit Code: $exitCode. Error executing 7za to unzip $zipFile into $tempDir\tcmd"
}

Write-Verbose "Retrieve install launcher"
$url = 'http://ghisler.fileburst.com/addons/installer.zip'
$checksum = '5c93fee377e2a55029f22bfb1b43760862bad671'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$installExeZip = Join-Path $tempDir "installer.zip"
$installExeDir = Join-Path $tempDir "installer"
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installExeZip" `
                      -Url "$url" `
                      -Url64bit "$url64" `
                      -Checksum "$checksum" `
                      -Checksum64 "$checksum64" `
                      -ChecksumType "$checksumType" `
                      -ChecksumType64 "$checksumType64"
$proc = Start-Process -FilePath "7za" `
                      -ArgumentList "x -y -o`"$installExeDir`" `"$installExeZip`"" `
                      -Wait `
                      -NoNewWindow `
                      -PassThru
$proc.WaitForExit()
$exitCode = $proc.ExitCode
if($exitCode -ne 0) {
  throw "Exit Code: $exitCode. Error executing 7za to unzip $sfxZip into $tempDir\tcmd"
}

Write-Verbose "Add launcher to extracted EXE"
if (Get-ProcessorBits 64) {
  $bitWidth = 64
} else {
  $bitWidth = 32
}
$installExePath = Join-Path -Path $installExeDir `
                     -ChildPath $bitWidth | 
                  Join-Path -ChildPath "INSTALL.EXE"
Copy-Item $installExePath $tcmdWork -Force

Write-Verbose "Modify install options to make silent"
$installInf = Join-Path $tcmdWork "INSTALL.INF"
(Get-Content $installInf) -Replace 'UserName=',"$localUser" `
                          -Replace 'auto=0','auto=1' `
                          -Replace 'hidden=0','hidden=1' `
                          -Replace 'mkdesktop=1',"$desktopIcon" `
                          -Replace 'Dir=c:\\totalcmd',"$installPath" | Set-Content $installInf
$installInf64 = Join-Path $tcmdWork "INSTALL64.INF"
(Get-Content $installInf64) -Replace 'UserName=',"$localUser" `
                          -Replace 'auto=0','auto=1' `
                          -Replace 'hidden=0','hidden=1' `
                          -Replace 'mkdesktop=1',"$desktopIcon" `
                          -Replace 'Dir=c:\\totalcmd',"$installPath" | Set-Content $installInf64

$tcmdExe = Join-Path $tcmdWork "INSTALL.EXE"
Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$tcmdExe"