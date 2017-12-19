$packageName = 'mozillahistoryview'
$url = 'http://www.nirsoft.net/utils/mozillahistoryview.zip'
$checksum = '38bb86bf08371eb5e6456908d2006b0630b662263d90d148c6369cedc25e596c'
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