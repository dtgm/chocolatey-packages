$packageName = 'networklatencyview'
$url = 'http://www.nirsoft.net/utils/networklatencyview.zip'
$checksum = '658c8a6d412d2737c663f0ac4f793b7dfad54f74'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/networklatencyview-x64.zip'
$checksum64 = '01c7cfb38aa53be68773ac480be61850dfd33ce5'
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