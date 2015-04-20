$packageName = 'webcacheimageinfo'
$url = 'http://www.nirsoft.net/utils/webcacheimageinfo.zip'
$checksum = '4bc6ce7e1a2f19178d943dd51b335af9cc9a7f7f'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null