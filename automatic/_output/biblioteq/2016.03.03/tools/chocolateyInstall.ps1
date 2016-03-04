$packageName = 'biblioteq'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/biblioteq/files/Version%202016.03.03/BiblioteQ-Installer.exe/download'
$checksum = '039f5239b81abd781466b1dae22b59ea1ae5b83d'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"