$packageName = '{{PackageName}}'
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
$install64File = Join-Path $toolsDir "$($packageName)64.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# create respective 32/64 bit shim gui indicator depending what was installed
if (Test-Path $toolsDir\FileTool.exe) {
  Set-Content -Path ("$installFile.gui") -Value $null
}
if (Test-Path $toolsDir\FileTool64.exe) {
  Set-Content -Path ("$install64File.gui") -Value $null
}