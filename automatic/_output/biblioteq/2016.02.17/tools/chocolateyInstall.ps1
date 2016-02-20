$packageName = 'biblioteq'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/biblioteq/files/Version%202016.02.17/BiblioteQ-Installer.exe/download'
$checksum = '{checksum}'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"