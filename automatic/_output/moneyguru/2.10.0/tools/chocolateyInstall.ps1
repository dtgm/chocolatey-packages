$packageName = 'moneyguru'
$installerType = 'msi'
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/dupeguru_pe_win64_2.10.0.msi'
$checksum = '320ea8992854fc8cdcb81854533b659e322f5aa4'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"