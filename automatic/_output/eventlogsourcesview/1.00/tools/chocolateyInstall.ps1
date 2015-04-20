$packageName = 'eventlogsourcesview'
$url = 'http://www.nirsoft.net/utils/eventlogsourcesview.zip'
$checksum = 'fb74a5dd89a0e85de028cef4b36cdc761d1ad88b'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/eventlogsourcesview-x64.zip'
$checksum64 = '0d4b6f80b27397ca437bbce06007aa9fc75f8ec0'
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