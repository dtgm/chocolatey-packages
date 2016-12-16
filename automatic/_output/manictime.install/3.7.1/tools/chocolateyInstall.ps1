$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cdn.manictime.com/setup/v3_7_1_0/ManicTimeSetup.msi'
$checksum = 'd44fe133e52f8952cd15822d743eed9521f7a8cca7fbf912751f68cd1d4cd07f'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"