$packageName = 'superputty.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/jimradford/superputty/releases/download/1.4.0.8/SuperPuttySetup-v1.4.0.8.msi'
$checksum = '41598efc63877add439488a7d60ea36252c731215840e73ebea9cb69697721c4'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"