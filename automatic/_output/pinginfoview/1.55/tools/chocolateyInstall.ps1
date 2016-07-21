$packageName = 'pinginfoview'
$url = 'http://www.nirsoft.net/utils/pinginfoview.zip'
$checksum = '71807dd51fb91dc87aa4c6cb252a631285fd80f0c319c72e74a1e23dd965a0c6'
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