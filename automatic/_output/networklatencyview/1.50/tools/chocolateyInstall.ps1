$packageName = 'networklatencyview'
$url = 'http://www.nirsoft.net/utils/networklatencyview.zip'
$checksum = 'f2defc0a58bbac046406cc4b52a4d98b474eb9cc7f246174f8c046400921b5ac'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/networklatencyview-x64.zip'
$checksum64 = '146d107cf70e959c7d6101685c73bde9cee746711a9b97ba118590dd924c51bf'
$checksumType64 = 'sha256'
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