$packageName = 'bleachbit.portable'
$url = 'https://download.bleachbit.org/BleachBit-1.10-portable.zip'
$checksum = 'cb63ff77cacbe649fdc25f3d8e5f82832de720ecf1558864772caf31b88fda4f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"