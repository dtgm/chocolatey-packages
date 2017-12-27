$packageName = 'whoiscl'
$url = 'http://www.nirsoft.net/utils/whoiscl.zip'
$checksum = 'd4f1e3a45e6b2e0ea79aab6d38895f450741ff24109341ca451250cd5f2d0d8e'
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