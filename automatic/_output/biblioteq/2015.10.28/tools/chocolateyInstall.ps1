$packageName = 'biblioteq'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/biblioteq/files/Version%202015.10.28/BiblioteQ-Installer.exe/download'
$checksum = '0bfb082e41a92deaa4a0038ccde714f2dbe025eb'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"