$packageName = 'peazip.portable'
$packageVersion = '5.9.0'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.9.0/peazip_portable-5.9.0.WINDOWS.zip', 'https://github.com/giorgiotani/PeaZip/releases/download/5.9.0/peazip_portable-5.9.0.WIN64.zip')
$url = $urlArray[0]
$checksum = '81c367127eb91671c94aa9e3635ee6c512ad6810'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'fd589da02bbd24905c188dd785ab5c4ea2775415'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"