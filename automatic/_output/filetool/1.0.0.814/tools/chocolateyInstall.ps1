$packageName = 'filetool'
$urlArray = @('http://sourceforge.net/projects/stefanstools/files/FileTool/FileTool-1.0.0.814.zip/download','http://sourceforge.net/projects/stefanstools/files/FileTool/FileTool64-1.0.0.814.zip/download')
$url = $urlArray[0]
$checksum = '2c09689e53e7942b093bf0d3e3cf401641dc14c6'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '8f556b283a0dc18c646beb7380aafbbe9048b18f'
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