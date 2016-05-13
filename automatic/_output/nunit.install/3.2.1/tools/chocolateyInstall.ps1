$packageName = 'nunit.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/nunit/nunit/releases/download/3.2.1/NUnit.3.2.1.msi'
$checksum = 'd6fb0ef55655651b1e99e85ef93f97bf'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"