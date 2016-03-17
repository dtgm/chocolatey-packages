$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_1_1.exe'
$checksum = 'b930968981c349029552bd2ddc3ca29e05d2b07a'
$checksumType = 'sha1'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_1_1.exe'
$checksum64 = '13306d48fc6dadc8fc1401488889881ac50e9f19'
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