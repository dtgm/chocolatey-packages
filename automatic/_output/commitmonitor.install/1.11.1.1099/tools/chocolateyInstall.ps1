$packageName = 'commitmonitor.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.11.1.1099.msi/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.11.1.1099.msi/download')
$url = $urlArray[0]
$checksum = '0bed9ee0eba87f77620c644896a54a186069eb6a'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '72bef7f64a9edee18fa4602d5c06841d46387b92'
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