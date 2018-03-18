$packageName = 'gajim'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://gajim.org/downloads/1.0/gajim-1.0.0-1.exe'
$checksum = '320b3c95c394ea453b92f8cb5948a294a586c3c95fdb616cdb0a07d70cabb192'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"