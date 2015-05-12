$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = '08bc469db1861d29288743c48a3dfd7ec2f3ee80'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = '99bbcbdf29efae9c521441dd853ac59685d40ae9'
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