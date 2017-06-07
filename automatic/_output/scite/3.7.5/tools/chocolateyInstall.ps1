$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.7.5x86.msi'
$checksum = '64b71ccc3319f3f1f4e1f03ba54d3d1bd988ba2cdc7bab8f9d9960fe382be717'
$checksumType = 'sha256'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.7.5x64.msi'
$checksum64 = 'e5d9f12d400f16481342a455e6ce2796edab96b3518f9495837aadcfe5546535'
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