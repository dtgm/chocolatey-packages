$packageName = 'moneyguru'
$installerType = 'msi'
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/moneyguru_win64_2.9.1.msi'
$checksum = '{checksum}'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"