$packageName = 'regfileexport'
$url = 'http://www.nirsoft.net/utils/regfileexport.zip'
$checksum = '4d85a80c7efa96d3529fb3c665d0efd3a840f07fbe64b78091acad298a154330'
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