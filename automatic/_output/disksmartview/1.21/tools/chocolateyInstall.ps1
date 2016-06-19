$packageName = 'disksmartview'
$url = 'http://www.nirsoft.net/utils/disksmartview.zip'
$checksum = '8d10b7f4c8b60a39e33f28dc45782f734ce4af84bac33945251786c0c361f9dd'
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