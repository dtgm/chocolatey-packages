$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.6.2.msi&ViewerAccept=Accepted'
$checksum = 'b35163ada718691c2a058c0c30c3dd9573b4ee82'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.6.2x64.msi&ViewerAccept=Accepted'
$checksum64 = '438395c2ad56e93ad0e400855796c837c183cf8a'
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