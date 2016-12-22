$packageName = 'babelpad'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.babelstone.co.uk/Software/7907/BabelPad.zip'
$checksum = '53df6579c8f71fdfeac42f4853ca14f58cbb23916ef4dcbe3a9c4510a7853649'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"