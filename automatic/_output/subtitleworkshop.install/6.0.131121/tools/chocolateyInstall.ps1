$packageName = 'subtitleworkshop.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/subworkshop/files/bin/Subtitle%20Workshop%206.0b/SubtitleWorkshop_6.0b_131121_installer.exe/download'
$checksum = '3980f8001d24cde75ecd05a48369f2fe48c72a21'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"