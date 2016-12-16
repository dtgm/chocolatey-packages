$packageName = 'turnedontimesview'
$url = 'http://www.nirsoft.net/utils/turnedontimesview.zip'
$checksum = '8c1f988c571b1450b1bd7ba3ab934e43708e63014ca5ad1f6bf4f633909735d8'
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