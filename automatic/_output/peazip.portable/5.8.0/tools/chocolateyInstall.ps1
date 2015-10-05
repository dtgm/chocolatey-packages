$packageName = 'peazip.portable'
$packageVersion = '5.8.0'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.8.0/peazip_portable-5.8.0.WINDOWS.zip', 'https://github.com/giorgiotani/PeaZip/releases/download/5.8.0/peazip_portable-5.8.0.WIN64.zip')
$url = $urlArray[0]
$checksum = 'cc13d9da49a1906f571dc402546ffa88d67a42ad'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'be18b30ed11401a19a00db663872e45382bf527d'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"