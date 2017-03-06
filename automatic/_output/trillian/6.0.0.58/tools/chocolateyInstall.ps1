$packageName = 'trillian'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.ceruleanstudios.com/trillian-v6.0.0.58.msi'
$checksum = '3d94270f92204fb2294833adcd51d7768e8b915dc0ed1b9daf286f65c57e54f9'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"