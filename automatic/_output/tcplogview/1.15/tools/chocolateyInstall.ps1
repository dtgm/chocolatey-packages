$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = 'a6522e8c682edf66dca83a68c8f6541c7d1ffd79'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = 'fa757e597891620dc9397887e7883ca6419ad2a4'
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