$packageName = 'regfromapp'
$url = 'http://www.nirsoft.net/utils/regfromapp.zip'
$checksum = '9895b295444b813971b5661b355960bb9bec2d69'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/regfromapp-x64.zip'
$checksum64 = '73b8de9b40733a3bd9b1009182ce9af15a3b1317'
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