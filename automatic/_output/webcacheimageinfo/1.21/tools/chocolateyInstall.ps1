$packageName = 'webcacheimageinfo'
$url = 'http://www.nirsoft.net/utils/webcacheimageinfo.zip'
$checksum = 'cc4709ab3308eac84555d4c75cb541ea7b26128e'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null