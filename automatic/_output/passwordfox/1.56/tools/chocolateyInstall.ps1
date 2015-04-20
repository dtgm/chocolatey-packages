$packageName = 'passwordfox'
$url = 'http://www.nirsoft.net/toolsdownload/passwordfox.zip'
$checksum = '51b012f172f4278728999c06f1fb018487b494f5'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/toolsdownload/passwordfox-x64.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

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