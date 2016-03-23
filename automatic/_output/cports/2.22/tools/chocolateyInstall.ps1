$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = '8684414ae4c0666e2d289c34851ad962f09da779'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = 'e8eae65ddf83914e1d93cd90891c479735befa70'
$checksumType64 = 'sha1'
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