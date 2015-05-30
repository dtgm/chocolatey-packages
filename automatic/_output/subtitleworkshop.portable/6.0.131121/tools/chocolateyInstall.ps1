$packageName = 'subtitleworkshop.portable'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/subworkshop/files/bin/Subtitle%20Workshop%206.0b/SubtitleWorkshop_6.0b_131121_portable.zip/download'
$checksum = '393e37cc9a81029b07435fbd0ce6d6c6a16d7585'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"