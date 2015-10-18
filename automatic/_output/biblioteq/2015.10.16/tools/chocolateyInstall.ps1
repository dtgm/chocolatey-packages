$packageName = 'biblioteq'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/biblioteq/files/Version%202015.10.16/BiblioteQ-Installer.exe/download'
$checksum = 'eb35ca8b164241b14d1627d426af5c8e6500adc0'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"