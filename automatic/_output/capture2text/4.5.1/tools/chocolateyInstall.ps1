$packageName = 'capture2text'
$urlArray = @('https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v4.5.1/Capture2Text_v4.5.1_32bit.zip/download', 'https://sourceforge.net/projects/capture2text/files/Capture2Text/Capture2Text_v4.5.1/Capture2Text_v4.5.1_64bit.zip/download')
$url = $urlArray[0]
$checksum = 'f836b071736ee24580ccaf325d4b3d637345048c6f642b3d78ad290358fc64ec'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '96bce1bd4e6947106eea0b5cd84ffc36562540516b6dabad0ffa9876f4a3a014'
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