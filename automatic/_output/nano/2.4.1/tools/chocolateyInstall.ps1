$packageName = 'nano'
$url = 'http://www.nano-editor.org/dist/v2.4/NT/nano-2.4.1.zip'
$checksum = '2aa633906cfec2e4abb10b0bac077e48c08c460d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"