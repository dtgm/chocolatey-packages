$packageName = 'commitmonitor.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.10.2.1025.msi/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.10.2.1025.msi/download')
$url = $urlArray[0]
$checksum = '2f7173b093cdcf28bfe790fa4d4bab936ff71604'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'f6e30ebc6b79b2e059b972cf3b4a87b3c7047b49'
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