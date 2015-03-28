$packageName = 'trillian'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ceruleanstudios.com/trillian-v5.5.0.19.msi'
$checksum = '86d77db204a62e0de9aac460cad014ac75ad1c12'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"