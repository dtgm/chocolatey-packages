$packageName = 'scilab'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.scilab.org/download/5.5.2/scilab-5.5.2.exe'
$checksum = '9f6eeabe4a90a4a3c84889eed1a82c866b02a1de'
$checksumType = 'sha1'
$url64 = 'http://www.scilab.org/download/5.5.2/scilab-5.5.2_x64.exe'
$checksum64 = '30e80d383270c10b954fefa4d7b44501e2b6d5d1'
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