$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.7.2x86.msi'
$checksum = 'f1bc91f118d811a4aa5764f19ace667b0bdc266351c3665cc342fef77b14fadf'
$checksumType = 'sha256'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.7.2x64.msi'
$checksum64 = 'aecb820f0b20a94ff424759637a7ca5c308c9b9ca71c77ad9e5c0908f9d31e3e'
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