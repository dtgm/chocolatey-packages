$packageName = 'chromecacheview'
$url = 'http://www.nirsoft.net/utils/chromecacheview.zip'
$checksum = '5b9861b893add032b73231c2e148fbcb7a830c0d5ffe9d925a0a0dde4f8b27ac'
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