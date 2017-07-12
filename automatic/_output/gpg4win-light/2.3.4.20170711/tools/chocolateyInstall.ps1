$packageName = 'gpg4win-light'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-light-2.3.4.exe'
$checksum = 'd3c64e1ad616035d1b6cfc4692ca914e69e35394'
$checksumType = 'sha1'
$validExitCodes = @(0)

Write-Verbose "Stop service `"DirMngr`" if already running"
if (Get-Service -Name dirmngr -ErrorAction SilentlyContinue) {
  Start-ChocolateyProcessAsAdmin "net stop `"dirmngr`""
}

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"