$packageName = 'manictime.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cdn.manictime.com/setup/v3_7_4_0/ManicTimeSetup.msi'
$checksum = '626a11d92608983a1e5067eb11bc362d2b43b2fdb093f9e1f15d43c446b5263f'
$checksumType = 'sha256'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"