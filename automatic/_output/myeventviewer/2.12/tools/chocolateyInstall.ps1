$packageName = 'myeventviewer'
$url = 'http://www.nirsoft.net/utils/myeventviewer.zip'
$checksum = '1bb1cde3d182b4574b06cbc4d440dd662b1ee622'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/myeventviewer-x64.zip'
$checksum64 = 'af6066a8391697a4b7903dc95698806919844684'
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