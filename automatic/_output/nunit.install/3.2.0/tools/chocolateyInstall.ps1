$packageName = 'nunit.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/nunit/nunit/releases/download/3.2.0/NUnit.3.2.0.msi'
$checksum = '3fa87ed5a683e4455aeac4a4d75cea08'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"