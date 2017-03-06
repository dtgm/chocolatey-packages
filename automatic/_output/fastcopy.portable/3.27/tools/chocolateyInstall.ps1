$packageName = 'fastcopy.portable'
$url = 'http://ftp.vector.co.jp/68/20/2323/FastCopy326.zip'
$checksum = '253e4ed5548980c03c9abde9ee3128d738ca5275210f90262a442eda17460be9'
$checksumType = 'sha256'
$url64 = 'http://ftp.vector.co.jp/68/20/2323/FastCopy326_x64.zip'
$checksum64 = 'a0e6bdb0d330ab536cb1c140aa1c0d4f994c184a145f7c4f264c5de95e7ccb7a'
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

$installFile = Join-Path $toolsDir "setup.exe"
if (Test-Path $installFile) {
  Remove-Item -Path ("$installFile.ignore")
}