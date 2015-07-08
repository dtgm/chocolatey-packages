$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-aws.ej-technologies.com/install4j/install4j_windows_6_0_3.exe'
$checksum = 'fa212ba0fd43316ba539b2df05f9839dc2c8225d'
$checksumType = 'sha1'
$url64 = 'http://download-aws.ej-technologies.com/install4j/install4j_windows-x64_6_0_3.exe'
$checksum64 = '754d1dc5b5850b16ba0c06a05c37abfac0994abd'
$checksumType64 = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"