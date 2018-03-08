$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://cdn.manictime.com/setup/v4_0_13_0/ManicTimeSetup.msi'
$checksum = '88b10989aad552f308c1e91367907c089feb342c6bd398b9c40487e7fb69790a'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"