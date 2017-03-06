$packageName = 'networkconnectlog'
$url = 'http://www.nirsoft.net/utils/networkconnectlog.zip'
$checksum = '6e5a2d916e180f31a3a7bd9090e127da89b2855f6819097a3a4c47297638c9c0'
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