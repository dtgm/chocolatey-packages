$packageName = 'peazip.portable'
$packageVersion = '6.0.3'
$urlArray = @('http://sourceforge.net/projects/peazip/files/6.0.3/peazip_portable-6.0.3.WINDOWS.zip', 'http://sourceforge.net/projects/peazip/files/6.0.3/peazip_portable-6.0.3.WIN64.zip')
$url = $urlArray[0]
$checksum = '529b2b353a76c0dedb888751df0253caeae6fdc9fb11735881afe1dc53490af8'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '7fee4ace1ac3780ecd2eb6c0e9e9dccd6e488b592ac7b8cf13b3febea4a1a487'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"