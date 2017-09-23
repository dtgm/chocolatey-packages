$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_2.exe'
$checksum = '44435b69230e431b8d59576a6cc65f7529cdf32fcfce89f5d0f3f379af95ae7c'
$checksumType = 'sha256'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_2.exe'
$checksum64 = '25030f5346307148a530e63b3c1b531ad1fc08620d3981821bd828be4f86de6a'
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