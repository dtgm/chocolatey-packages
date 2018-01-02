$packageName = 'chromecacheview'
$url = 'http://www.nirsoft.net/utils/chromecacheview.zip'
$checksum = '17b775d9027196278546f9c9075432ddc9b0270e130c29ed3db29aa8b3c895a7'
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