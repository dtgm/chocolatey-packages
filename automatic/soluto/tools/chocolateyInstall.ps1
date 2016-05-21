$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$installerType = 'exe'
$silentArgs = '/q'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"

try {
  if ( 
    Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                              'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                              'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                     -ErrorAction:SilentlyContinue `
    | Where-Object { $_.DisplayName -like "Soluto" `
                                    -and `
                     $_.DisplayVersion -ge $packageVersion } 
  ) {
    Write-Host "$packageName version $packageVersion or newer is already installed."
  } else {
    Start-Process $ahkExe $ahkFile

    Install-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$silentArgs" `
                              -Url "$url" `
                              -ValidExitCodes $validExitCodes `
                              -Checksum "$checksum" `
                              -ChecksumType "$checksumType"
  }
} catch {
  throw $_.Exception
}