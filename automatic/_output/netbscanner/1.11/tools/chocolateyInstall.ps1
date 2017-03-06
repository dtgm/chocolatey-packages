$packageName = 'netbscanner'
$url = 'http://www.nirsoft.net/utils/netbscanner.zip'
$checksum = 'f4970e58d94ef7112924b16ae81187e18d9bad26d407e9b6a37172c5d5973c3c'
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