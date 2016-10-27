$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cdn.manictime.com/setup/v3_6_7_0/ManicTimeSetup.msi'
$checksum = 'ebe2238141a0f5ee1f9ce31d84d67a545d3c92bd419951ec484674642f5f5e7f'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"