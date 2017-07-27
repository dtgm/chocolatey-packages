$packageName = 'trillian'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.ceruleanstudios.com/trillian-v6.0.0.61.msi'
$checksum = '29bc18677966374e4d2614fd7d64b078e1861b916ea41a95cba3ef0c203d29e8'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"