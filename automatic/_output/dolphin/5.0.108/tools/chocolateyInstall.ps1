$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-5.0-108-x64.7z'
$checksum = '4cf54ec161096ec14452b682ec23fb11eff76db5e23e709c00f172da298a9fb5'
$checksumType = 'sha256'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"