$packageName = 'mtn'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.monotone.ca//downloads/1.1/monotone-1.1-setup.exe'
$checksum = '29f45b2a1a233a3b09e6041ebaf09c07a9cba361'
$checksumType = 'sha1'
$validExitCodes = @(0)

Write-Verbose "Starting AutoHotKey for assistance in silent and/or automated install"
Write-Verbose "Actively using the computer while AutoHotKey is running may interfere with automation"
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

Write-Verbose "Querying registry for install location..."
$packageSearch = "monotone *"
$regKey = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                           -ErrorAction:SilentlyContinue `
          | Where-Object {$_.DisplayName -like $packageSearch}

$binPath = Join-Path $regKey.InstallLocation "bin"
if ($binPath) {
  Write-Verbose "Adding `"$binPath`" to path environment variable..."
  Install-ChocolateyPath $binPath 'Machine'
}