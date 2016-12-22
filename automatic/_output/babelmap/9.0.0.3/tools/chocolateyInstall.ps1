$packageName = 'babelmap'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.babelstone.co.uk/Software/7907/BabelMap.zip'
$checksum = 'df5d59d74afd8734bed6d7f27cf69e2b8364392f43b7f13777fdf23abd2d4027'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"