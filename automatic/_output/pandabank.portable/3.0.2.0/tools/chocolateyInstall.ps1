$packageName = 'pandabank.portable'
$packageVersion = '3.0.2.0'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/pandacoin-official/pandacoin/releases/download/v3.0.2/pandacoin-3.0.2.0-win32.zip'
Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir"