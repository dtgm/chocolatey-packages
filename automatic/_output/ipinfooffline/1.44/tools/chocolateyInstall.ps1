$packageName = 'ipinfooffline'
$url = 'http://www.nirsoft.net/utils/ipinfooffline.zip'
$checksum = '0b818934aaefaa6086fc2bb9ee9c968a3357d46cb26a9fe60c8ae4efa5105f76'
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