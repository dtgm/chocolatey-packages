$packageName = 'commitmonitor.portable'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.11.1.1099.zip/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.11.1.1099.zip/download')
$url = $urlArray[0]
$checksum = 'a98890c1c56544be9f4be2d34500232bd0d0d0c4'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'df06fa979a86eacca5abb28152678b666d08d214'
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