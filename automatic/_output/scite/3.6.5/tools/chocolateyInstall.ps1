$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.5.msi'
$checksum = 'cac1d4012c4b30ce60f911c8f94c7147f902f8a4'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.5x64.msi'
$checksum64 = '9d24d8230aa6a05f14b7efcb812d5624072a499d'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"