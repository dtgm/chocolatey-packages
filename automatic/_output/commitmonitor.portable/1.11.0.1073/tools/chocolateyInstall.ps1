$packageName = 'commitmonitor.portable'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.11.0.1073.zip/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.11.0.1073.zip/download')
$url = $urlArray[0]
$checksum = '{checksum}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "commitmonitor.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"