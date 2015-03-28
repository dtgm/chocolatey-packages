$packageName = 'tabspace'
$urlArray = @('http://sourceforge.net/projects/stefanstools/files/Tabspace/tabspace-1.1.2.zip/download', 'http://sourceforge.net/projects/stefanstools/files/Tabspace/tabspace64-1.1.2.zip/download')
$url = $urlArray[0]
$checksum = '63a2ba5bb281bbfc56b0a39caeaf395ca245386e'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'c6218bdf71daa8a3b5b8f9467973d5c368403ed4'
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