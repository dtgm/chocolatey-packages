$packageName = 'biblioteq'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/biblioteq/files/Version%202015.07.04/BiblioteQ-Installer.exe/download'
$checksum = '7aefd8f354286920967a84342341d2db75f014f2'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"