$packageName = 'outlookstatview'
$url = 'http://www.nirsoft.net/utils/outlookstatview.zip'
$checksum = '073ac9fd5d2d2f34802437ab4cc78112c27772a9ebf6d6003708886ac2ffe4a4'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookstatview-x64.zip'
$checksum64 = '2d861a2928609742728ea054ae98e93fb9182f7b100db3baa91ecb83ff4bff92'
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