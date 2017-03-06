$packageName = 'dnsdataview'
$url = 'http://www.nirsoft.net/utils/dnsdataview.zip'
$checksum = 'ba5596a05c4725db635c5ff5444b9dc85828b38dafe95f136b0fecf7426346a4'
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