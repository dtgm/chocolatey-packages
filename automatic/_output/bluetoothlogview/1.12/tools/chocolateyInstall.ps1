$packageName = 'bluetoothlogview'
$url = 'http://www.nirsoft.net/utils/bluetoothlogview.zip'
$checksum = 'baaf54b422aa8a5c5dd6a21e842f40c04186fd5a33bf6c126538009ffc3f31c9'
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