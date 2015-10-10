$packageName = 'officeins'
$url = 'http://www.nirsoft.net/utils/officeins.zip'
$checksum = '0b3df245bd96fcf8d168fad527854a4f0c68a668'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/officeins-x64.zip'
$checksum64 = 'd337d7d24057ce3786b6dbffb1d17a00e940e00f'
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