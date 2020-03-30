$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-4.3.2x86.msi'
$checksum = '51b56fd74ce87da095a687b0820636a916a8a48817a5c912afa12e11a50a178f'
$checksumType = 'sha256'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-4.3.2x64.msi'
$checksum64 = 'd9413ab5f9cfd439ca2c57f9ace758f35030b648ed137f8c4b12008cf2b29d29'
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