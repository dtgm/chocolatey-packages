$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = '726602b6dd0e55080188f95c1707b8453739666b'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = 'c09d0a9f2e4b68e78991080809da9e996ac09a83'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "nk2edit.exe"

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