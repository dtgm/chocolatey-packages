$packageName = 'hwinfo'
$url = 'http://www.hwinfo.com/files/hw32_464.zip'
$checksum = '{checksum}'
$checksumType = 'sha1'
$url64 = 'http://www.hwinfo.com/files/hw64_464.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# create respective 32/64 bit shim gui indicator depending what was installed
$installFile = Join-Path $toolsDir "$($packageName)32.exe"
$install64File = Join-Path $toolsDir "$($packageName)64.exe"
if (Test-Path $toolsDir\FileTool.exe) {
  Set-Content -Path ("$installFile.gui") -Value $null
}
if (Test-Path $toolsDir\FileTool64.exe) {
  Set-Content -Path ("$install64File.gui") -Value $null
}
