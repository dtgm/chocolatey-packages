$packageName = 'gpg4win'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-3.0.0.exe'
$checksum = ''
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