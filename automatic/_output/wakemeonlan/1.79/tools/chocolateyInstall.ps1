$packageName = 'wakemeonlan'
$url = 'http://www.nirsoft.net/utils/wakemeonlan.zip'
$checksum = '7d70a9c1ff48081b52826934c0546a8139fe4a803c405ac0116d56e662ecca9b'
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