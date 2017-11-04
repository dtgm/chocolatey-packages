$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://cdn.manictime.com/setup/v3_8_7_0/ManicTimeSetup.msi'
$checksum = '9b88c9b56c30ae85a3518b1d3320051cbae6564910437dcbcd36d37aef0fa0d6'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"