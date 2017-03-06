$packageName = 'searchmyfiles'
$url = 'http://www.nirsoft.net/utils/searchmyfiles.zip'
$checksum = 'a26541676bfbfe1a442dfa8eda2ee7c1f16f7ba8431c007a38388191805f0fef'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/searchmyfiles-x64.zip'
$checksum64 = '23b91d09664713f38cb37c8b549dcf0479bb716aab2bc2ab9fdd604333c2364d'
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