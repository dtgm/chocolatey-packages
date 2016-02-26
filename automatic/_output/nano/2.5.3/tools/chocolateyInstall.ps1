$packageName = 'nano'
$url = 'http://www.nano-editor.org/dist/v2.5/NT/nano-2.5.3.zip'
$checksum = 'b4ecf6ad6ae46e7c4e29b115b1503722133591d9'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"