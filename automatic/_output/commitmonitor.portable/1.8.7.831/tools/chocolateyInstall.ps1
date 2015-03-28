$packageName = 'commitmonitor.portable'
$urlArray = @('http://sourceforge.net/projects/commitmonitor/files/CommitMonitor-1.8.7.831.zip/download', 'http://sourceforge.net/projects/commitmonitor/files/CommitMonitor64-1.8.7.831.zip/download')
$url = $urlArray[0]
$checksum = '5591b4c401a758cb9cb50dcd797561df9f1e0862'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'f4ac7f8f7f1e2e634bc3790688b33eb113bcbd24'
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