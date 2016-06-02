$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.6.msi'
$checksum = '16c877808d81d1e1da7b6d17f5811c60dd8c13e9209e5acfa3fd02b86edab781'
$checksumType = 'sha256'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.6x64.msi'
$checksum64 = '5e387ad75898c6dbb66d81439e6597c345e2c7491784537ad22c29b9189be06b'
$checksumType64 = 'sha256'
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