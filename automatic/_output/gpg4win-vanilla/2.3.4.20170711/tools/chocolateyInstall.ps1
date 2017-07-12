$packageName = 'gpg4win-vanilla'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-vanilla-2.3.4.exe'
$checksum = '1f280bfc72b61c48785f913b3663a1444a4c9a32'
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