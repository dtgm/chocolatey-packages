$packageName = 'moneyguru'
$installerType = 'msi'
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/moneyguru_win64_2.9.4.msi'
$checksum = 'e63027d5e1e8358b0072aeefa8063137c93ef7fc'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"