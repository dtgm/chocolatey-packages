$packageName = 'winprefetchview'
$url = 'http://www.nirsoft.net/utils/winprefetchview.zip'
$checksum = '5f511d8010a076f061726ee35bdfb6c7ab7ebfff'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winprefetchview-x64.zip'
$checksum64 = '31ce26cb52e5dff9ecd1c90eaac56da264e4e53e'
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