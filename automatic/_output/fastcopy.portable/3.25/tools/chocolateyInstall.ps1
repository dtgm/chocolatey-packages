$packageName = 'fastcopy.portable'
$url = 'http://ftp.vector.co.jp/67/98/2323/FastCopy325.zip'
$checksum = '1c001c87bebc1631d9b831d0fbbb4d029dbc26aaf9f3c7bafaa1d2f3bf84e63d'
$checksumType = 'sha256'
$url64 = 'http://ftp.vector.co.jp/67/98/2323/FastCopy325_x64.zip'
$checksum64 = '1cb7e7eeda51be260d8737e2ea39b417b1e2a9d8e9e65f9466d39068e8cdbab6'
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