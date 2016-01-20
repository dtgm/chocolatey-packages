$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_0_4.exe'
$checksum = '9800ce1854f7122c4193d6254e36576246e0b53f'
$checksumType = 'sha1'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_0_4.exe'
$checksum64 = 'c7fd2f28eebbe1fb89d123e7d6fca19c745e0717'
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