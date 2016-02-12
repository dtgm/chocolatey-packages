$packageName = 'nano'
$url = 'http://www.nano-editor.org/dist/v2.5/NT/nano-2.5.2.zip'
$checksum = '4d2d775a19e0c67e15aa6f012b77a8108622d370'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"