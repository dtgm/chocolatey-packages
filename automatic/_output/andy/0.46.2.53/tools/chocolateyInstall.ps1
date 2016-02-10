$packageName = 'andy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_53_x86.exe'
$checksum = '9ee88098698bcf9f835bf18a19a9ed2b'
$checksumType = 'md5'
$url64 = 'http://downloads.andyroid.net/installer/v46/Andy_v46.2_53_x64.exe'
$checksum64 = '8696308899c7c43af5e734a36595f985'
$checksumType64 = 'md5'
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