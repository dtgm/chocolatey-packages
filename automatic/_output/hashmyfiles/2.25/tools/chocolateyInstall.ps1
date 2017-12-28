$packageName = 'hashmyfiles'
$url = 'http://www.nirsoft.net/utils/hashmyfiles.zip'
$checksum = 'f72ed369bfb8b2290406312f7c2782598b3ee2f107b2b64ed5259940705a6baf'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/hashmyfiles-x64.zip'
$checksum64 = 'dbd37fd2911307f33626b6abf87e9e5c91d7bc932fe613ee3fd312d543f4cd3c'
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