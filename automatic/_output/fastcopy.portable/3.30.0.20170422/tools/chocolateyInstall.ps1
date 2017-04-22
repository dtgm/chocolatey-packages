$packageName = 'fastcopy.portable'
$url = 'http://ftp.vector.co.jp/68/61/2323/FastCopy330.zip'
$checksum = 'c67bd82f9847d759b1fe114934ca724ead7f49a115764dff5473437a2bf5e926'
$checksumType = 'sha256'
$url64 = 'http://ftp.vector.co.jp/68/61/2323/FastCopy330_x64.zip'
$checksum64 = 'b66b8987d52d3d1a2cfad881f435d8d6cef48a9b72295ab2b2447b7550eec842'
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