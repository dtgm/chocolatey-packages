$packageName = 'yacy'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://yacy.net/release/yacy_v1.82_20150121_9000.exe'
$checksum = '04f328cc2ffe51f8e1da96d4d5dec31506173718'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"