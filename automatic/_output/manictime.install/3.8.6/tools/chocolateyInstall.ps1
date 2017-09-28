$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://cdn.manictime.com/setup/v3_8_6_0/ManicTimeSetup.msi'
$checksum = 'af26f221a4b5c22af08a3947f68418dd62746bf1ed62fd18ebc69a248fc24dfc'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"