$packageName = 'winlogonview'
$url = 'http://www.nirsoft.net/utils/winlogonview.zip'
$checksum = '86ea424cd4a45a91ab3586ac8a2e7aaaf245c2924d58ecfb51ee573d84bdba97'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null