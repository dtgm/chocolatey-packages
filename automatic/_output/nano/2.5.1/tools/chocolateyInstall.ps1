$packageName = 'nano'
$url = 'http://www.nano-editor.org/dist/v2.5/NT/nano-2.5.1.zip'
$checksum = '2e6b2e51be07689b50bc95b31aa0c772b53471a7'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"