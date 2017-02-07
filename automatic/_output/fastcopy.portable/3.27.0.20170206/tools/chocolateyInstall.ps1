$packageName = 'fastcopy.portable'
$url = 'http://ftp.vector.co.jp/68/40/2323/FastCopy327.zip'
$checksum = '8542ef9320a5e7c9f9622e8d83c6abad52d355e7add91a313b335f4ef6ac8c98'
$checksumType = 'sha256'
$url64 = 'http://ftp.vector.co.jp/68/40/2323/FastCopy327_x64.zip'
$checksum64 = '3de53dabf2df8ae2acfea7d984be4ada89d8e3a2dcb62c1bf6d509285b0a43df'
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