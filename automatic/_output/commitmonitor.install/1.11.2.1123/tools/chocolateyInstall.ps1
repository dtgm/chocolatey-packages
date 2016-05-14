$packageName = 'commitmonitor.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.11.2.1123.msi/download', 'https://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.11.2.1123.msi/download')
$url = $urlArray[0]
$checksum = 'ddfe06debf7a22b23031804ca2d9ee00649fe71c'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'e5c7b05956d23ccf93987b2f379d99e5d43d4467'
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