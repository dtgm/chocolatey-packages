$packageName = 'commitmonitor.portable'
$urlArray = @('https://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.11.2.1123.zip', 'https://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.11.2.1123.zip')
$url = $urlArray[0]
$checksum = 'c1256c41370c581c0f53e5b7d4ea9ccccfaaea1e'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'db349807dacf2edd57e2ab97c337a5f40c2c4895'
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