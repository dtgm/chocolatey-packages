$packageName = 'nunit.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/nunit/nunit/releases/download/3.0.0-beta-2/NUnit.3.0.0-beta-2.msi'
$checksum = 'b84c06a1d29728a27af4e17f8aa77b7d'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"