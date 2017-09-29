$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.16.1/stellarium-0.16.1-win32.exe/download', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.16.1/stellarium-0.16.1-win64.exe/download')
$url = $urlArray[0]
$checksum = '896027448d81b4b64d930960be1cdaca286f28995340b79b8e6739bd6a07d242'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = '7cf9a889f011df985295d8debcfd6f53896960c88b85ea99917c66718165c634'
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
