$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_3.exe'
$checksum = '4245aa165c3641bdbe98e0a6e46b68953b6781d1c2990896554e39369c10f36b'
$checksumType = 'sha256'
$url64 = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_3.exe'
$checksum64 = '4a9271357fac3347f5b2b25ba5f00bb983bd91976b73ac8036f4e4928ebbe4c7'
$checksumType64 = 'sha256'
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