$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_4.exe'
$checksum = '31ca2f74170e49237ae5786ad69c464f7af3384f88b1d422a05104f7824f84ad'
$checksumType = 'sha256'
$url64 = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_4.exe'
$checksum64 = 'e666be72a84f646c459da08df3be50d480bb26951a02fa971eb2f1654e8f3755'
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