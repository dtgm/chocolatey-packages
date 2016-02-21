$packageName = 'myeventviewer'
$url = 'http://www.nirsoft.net/utils/myeventviewer.zip'
$checksum = 'bfb34978c6693fa882ac7d6029c7573007d40f07'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/myeventviewer-x64.zip'
$checksum64 = '47459457be9cbcda0dd14483c2e5682cff78e964'
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