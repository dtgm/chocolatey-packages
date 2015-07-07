$packageName = 'moneyguru'
$installerType = 'msi'
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/dupeguru_pe_win64_2.9.0.msi'
$checksum = 'c23bde3062cbc107fa67c55309c5c26cb3dfbb79'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"