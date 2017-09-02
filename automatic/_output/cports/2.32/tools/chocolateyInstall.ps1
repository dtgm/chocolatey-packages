$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = '5e1328c08ec63f78bbf732d4f6172b3f772f0876c969fb4d7eab25ecc58a9da6'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = 'b0908afdec4de903a62558c9ebdff6e90192f38abfa62fbffdcafeeefe4da0e7'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null