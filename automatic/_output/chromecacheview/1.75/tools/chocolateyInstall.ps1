$packageName = 'chromecacheview'
$url = 'http://www.nirsoft.net/utils/chromecacheview.zip'
$checksum = 'a386a457d37475168065ddd02cff2906d627de8a07f765d4f0a80c3c856a0857'
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