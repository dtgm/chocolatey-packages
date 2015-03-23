$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.5.4.msi&ViewerAccept=Accepted'
$checksum = '5ed235bcf2cc3379222cb9169fde3319bb16c56d'
$checksumType = 'sha1'
$url64 = 'http://www.ebswift.com/Common/AspCommon/Download/FileDownloadToClient.aspx?File=/OpenSource/SciTEInstaller/scite-3.5.4x64.msi&ViewerAccept=Accepted'
$checksum64 = 'e1f8184bd2d067d1c62830f884b38832c315c9df'
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