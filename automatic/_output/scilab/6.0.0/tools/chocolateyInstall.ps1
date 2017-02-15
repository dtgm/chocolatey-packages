$packageName = 'scilab'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.scilab.org/download/6.0.0/scilab-6.0.0.exe'
$checksum = 'ce360726862053051dfe359d97c2802729da988ba3b5f6edbc314113360118eb'
$checksumType = 'sha256'
$url64 = 'http://www.scilab.org/download/6.0.0/scilab-6.0.0_x64.exe'
$checksum64 = 'f37f2501cfca28517258cf77cf70b6c1b53aaab165942fccb3ae529b09b81967'
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