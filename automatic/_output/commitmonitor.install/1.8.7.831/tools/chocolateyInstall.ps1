$packageName = 'commitmonitor.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.8.7.831.msi/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.8.7.831.msi/download')
$url = $urlArray[0]
$checksum = '8419810c2955e55b438b2e80db43931dcaefe2f9'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '50a082843856f82b2f1a41117e05541c8b181bc9'
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