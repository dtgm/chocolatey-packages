$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cdn.manictime.com/setup/v3_8_2_1/ManicTimeSetup.msi'
$checksum = 'e6488bf5716bd44508b8a5a3e10c021777d0f854fd54de0d70f7d3b8e8046a16'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"