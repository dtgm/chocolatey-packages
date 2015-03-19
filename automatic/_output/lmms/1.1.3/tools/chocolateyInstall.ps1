$packageName = 'lmms'
$packageVersion = '1.1.3'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://github.com/LMMS/lmms/releases/download/v1.1.3/lmms-1.1.3-win32.exe'
$checksum = '204dbae7b4a2143123b419f28af9f775bf207ebd'
$checksumType = 'sha1'
$url64 = 'https://github.com/LMMS/lmms/releases/download/v1.1.3/lmms-1.1.3-win64.exe'
$checksum64 = '9741863bdc37dfd5711912b3ee4025e6969ba542'
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
