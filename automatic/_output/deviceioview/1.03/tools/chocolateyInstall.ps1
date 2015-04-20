$packageName = 'deviceioview'
$url = 'http://www.nirsoft.net/utils/deviceioview.zip'
$checksum = '4853dac481e6f94a543bbf0a6a29c88a2fcdfdc3'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/deviceioview-x64.zip'
$checksum64 = '463a0c81320f20259b3c845bc048410cd29dd99b'
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