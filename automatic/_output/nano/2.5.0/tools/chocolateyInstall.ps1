$packageName = 'nano'
$url = 'http://www.nano-editor.org/dist/v2.5/NT/nano-2.5.0.zip'
$checksum = 'db6874c71e420988abfe697b204a7fb109db9659'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"