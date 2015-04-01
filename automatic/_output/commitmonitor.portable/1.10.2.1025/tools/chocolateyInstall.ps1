$packageName = 'commitmonitor.portable'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.10.2.1025.zip/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.10.2.1025.zip/download')
$url = $urlArray[0]
$checksum = 'b812a9277a88317d638087030a649d2896fffa9e'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'a0bfc21c86c337f673951324725878198cad4fd0'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"