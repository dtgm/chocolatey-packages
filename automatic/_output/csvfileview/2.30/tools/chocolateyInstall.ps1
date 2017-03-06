$packageName = 'csvfileview'
$url = 'http://www.nirsoft.net/utils/csvfileview.zip'
$checksum = '1bdc655f2200b928b04edc78a0704d64302d2d2508cf594e6072370b4484868c'
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