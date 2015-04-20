$packageName = 'bluescreenview.portable'
$url = 'http://www.nirsoft.net/utils/bluescreenview.zip'
$checksum = '4f9d6d829fc83c9946099e9704b982e8583574c3'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/bluescreenview-x64.zip'
$checksum64 = '6b4484a300da934a351f2ffb8147ba5501e8ef42'
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