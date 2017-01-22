$packageName = 'whosip'
$url = 'http://www.nirsoft.net/utils/whosip.zip'
$checksum = 'a84ac36ffd1a6e0d7c28aa00c2d1f27c511443741047dca9977747afba0fe92b'
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