$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.16.0/stellarium-0.16.0-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.16.0/stellarium-0.16.0-win64.exe/download')
$url = $urlArray[0]
$checksum = '373fa59806fd06d82da1bbca373fa5a4df869f33eb077cba39afaf7e29152b16'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = '4dd86a20d5d4a9c5178126726fbc74bcec4023fbbb2600102829b3b19dd1b6a8'
$checksumType64 = 'sha256'

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
