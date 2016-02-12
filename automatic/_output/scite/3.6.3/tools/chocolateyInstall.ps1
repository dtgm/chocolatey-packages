$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.3.msi'
$checksum = '5e9a535ed772ec22ab3a07759ff6ec423aafc302'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.3x64.msi'
$checksum64 = '70c1705be791e955adc4562570556d8e18f7b8a9'
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