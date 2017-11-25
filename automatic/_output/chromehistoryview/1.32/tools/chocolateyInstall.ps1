$packageName = 'chromehistoryview'
$url = 'http://www.nirsoft.net/utils/chromehistoryview.zip'
$checksum = 'f6eba7aca7dfa88328e52a0cfb466b8e9c9ebc857737957577ef3e488ce70ab8'
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