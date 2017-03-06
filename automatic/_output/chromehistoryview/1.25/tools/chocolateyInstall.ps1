$packageName = 'chromehistoryview'
$url = 'http://www.nirsoft.net/utils/chromehistoryview.zip'
$checksum = 'aa10b233490ded09c59253a453b9147b31a99888d2a5d4cbfdd41a7fe2b3d3ad'
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