$packageName = 'usblogview'
$url = 'http://www.nirsoft.net/utils/usblogview.zip'
$checksum = '6927c3f202a9394782f71ad9cea9b2ca3ca7a5185b28942aba61dcab2fc9581e'
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