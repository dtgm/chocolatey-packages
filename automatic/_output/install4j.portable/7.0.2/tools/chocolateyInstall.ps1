$packageName = 'install4j.portable'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_2.zip'
$checksum = 'd87006e17640c95fcf6fd147dcbff1e4e5c80b11b54b6221caef3816e06c1950'
$checksumType = 'sha256'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_2.zip'
$checksum64 = '8c1256db2cd8773337a0a852bcf772ed3182bf4f4b5a5fca4652109353b7745c'
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