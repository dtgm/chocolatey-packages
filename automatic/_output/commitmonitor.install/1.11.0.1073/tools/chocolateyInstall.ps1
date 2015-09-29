$packageName = 'commitmonitor.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.11.0.1073.msi/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.11.0.1073.msi/download')
$url = $urlArray[0]
$checksum = '{checksum}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
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