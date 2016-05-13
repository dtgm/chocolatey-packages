$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.4.msi'
$checksum = '625b4236a32ba8a3df3cbc073b04918b98a7d7d5'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-3.6.3x64.msi'
$checksum64 = '39b16e805782c87f13e63a27184619f9d6055fc9'
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