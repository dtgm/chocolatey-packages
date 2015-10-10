$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.6.1.msi&ViewerAccept=Accepted'
$checksum = '32e6b2a41e3ebac4520dce03b9b450b4ebde5ac2'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.6.1x64.msi&ViewerAccept=Accepted'
$checksum64 = '3aac769b89281d11a4e30304c23121d69055caa9'
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