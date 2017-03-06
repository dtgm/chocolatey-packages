$packageName = 'mzcv'
$url = 'http://www.nirsoft.net/utils/mzcv.zip'
$checksum = 'fc41c67babc6df3fd954d4af57082c5cec94da83df7d73927845dbee13b06c92'
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