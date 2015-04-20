$packageName = 'npackd.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd/Npackd32-1.19.13.msi/download', 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd64/Npackd64-1.19.13.msi/download')
$url = $urlArray[0]
$checksum = '4d761d0103f4920870863f5d3fd30a8bc34ed2ae'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'eacf9933b2190746b25565e9776cfe1435a0bb02'
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