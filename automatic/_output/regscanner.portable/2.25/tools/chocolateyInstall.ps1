$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = '9f4ae25e574f6cb72c1c05518675f9f027ddc8f9979253714f4182c2dd610f43'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "RegScanner.exe"

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