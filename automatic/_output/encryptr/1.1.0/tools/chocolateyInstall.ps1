$packageName = 'encryptr'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/devgeeks/Encryptr/releases/download/v1.1.0/Encryptr-v1.1.0-win.msi'
$checksum = 'cf1175b4aff18e91898ba7ebd5211219'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"