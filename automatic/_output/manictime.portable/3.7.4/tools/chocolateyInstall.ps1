$packageName = 'manictime.portable'
$url = 'http://cdn.manictime.com/setup/v3_7_4_0/ManicTimeUsb.zip'
$checksum = '681d726f260c60e09c22b99f8df53542acc8e2007c6ba860523027ee2809aa25'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"