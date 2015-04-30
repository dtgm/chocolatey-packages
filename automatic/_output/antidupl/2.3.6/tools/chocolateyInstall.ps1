# generated vars
$packageName = 'antidupl'
$url = 'https://sourceforge.net/projects/antidupl/files/bin/AntiDupl.NET-2.3.6.exe'
$checksum = '31558c2dcb18470803130417c83a2683371feab6'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$rarFile = Join-Path $toolsDir 'antidupl.rar'

# $Env:ChocolateyInstall\helpers\functions
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$rarFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

try {
  if (Test-Path "${Env:ProgramFiles(x86)}\7-zip") {
    $cmd7z = "${Env:ProgramFiles(x86)}\7-zip\7z.exe"
  }     elseif (Test-Path "$Env:ProgramFiles\7-zip") {
    $cmd7z = "$Env:ProgramFiles\7-zip\7z.exe"
  } else {
    Write-Warning "7-zip is not installed.  Please install 7-zip."
    throw
  }
  Start-Process -FilePath "$cmd7z" -Wait -WorkingDirectory "$toolsDir" -ArgumentList "x $rarFile"
  Remove-Item "$rarFile"
} catch {
  throw $_.Exception
}


# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "AntiDupl.NET-2.3.6" `
               | Join-Path -ChildPath "AntiDupl.NET.exe.gui"
Set-Content -Path $installFile `
            -Value $null