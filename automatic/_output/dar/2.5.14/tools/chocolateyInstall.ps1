$packageName = 'dar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dar/files/dar/2.5.14/dar64-2.5.14-win64.zip/download'
$checksum = '2aa312ea87b9fdfd4eefe698ce850c95611d4b45b498f726399f208bfafa54d6'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"