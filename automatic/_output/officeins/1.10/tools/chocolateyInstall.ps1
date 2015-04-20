$packageName = 'officeins'
$url = 'http://www.nirsoft.net/utils/officeins.zip'
$checksum = 'e2b78267ae3b81e378f4be287a94621dd1ae5712'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/officeins-x64.zip'
$checksum64 = '333e26ddd75e945239b6513b20388310d23276cd'
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