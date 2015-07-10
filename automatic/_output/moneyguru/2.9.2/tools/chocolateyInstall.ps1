$packageName = 'moneyguru'
$installerType = 'msi'
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/moneyguru_win64_2.9.2.msi'
$checksum = 'ab8434b41eca2b8e4c5ae445c918fe62d80ca124'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"