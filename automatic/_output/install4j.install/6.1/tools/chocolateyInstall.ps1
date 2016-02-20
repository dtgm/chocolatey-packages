$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_1.exe'
$checksum = '02b2338f5d1a7b8b224d6c415b044f5a260e3dad'
$checksumType = 'sha1'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_1.exe'
$checksum64 = 'b3aa49cc9ee0088bc65fb1d12b9215eb56cb20be'
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