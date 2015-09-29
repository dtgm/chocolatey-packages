$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.6.0.msi&ViewerAccept=Accepted'
$checksum = 'c1c6759909a521b9fdd1c8e4e07082ece732e049'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.6.0x64.msi&ViewerAccept=Accepted'
$checksum64 = 'e1f71ebe6f525fe4df9520982763f0e32066c11c'
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