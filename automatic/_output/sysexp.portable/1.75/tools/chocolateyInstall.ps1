$packageName = 'sysexp.portable'
$url = 'http://www.nirsoft.net/utils/sysexp.zip'
$checksum = '120c09fb892c35cbf172174f4411969907d0dd03d165cf2c3a0b36e010ea0ce2'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/sysexp-x64.zip'
$checksum64 = '90ecd52f6feaaff45cdf44e80dcdea7ed0527d2c59c80d45333f4def42b9ca47'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "sysexp.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null