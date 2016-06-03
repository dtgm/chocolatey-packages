$packageName = 'fastcopy.portable'
$url = 'http://ftp.vector.co.jp/66/88/2323/FastCopy313.zip'
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = 'http://ftp.vector.co.jp/66/88/2323/FastCopy313_x64.zip'
$checksum64 = '{checksumx64}'
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