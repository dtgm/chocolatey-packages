$packageName = 'sysexp.portable'
$url = 'http://www.nirsoft.net/utils/sysexp.zip'
$checksum = '72d619cf61c16266651df8240123d31b95a6d97d'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/sysexp-x64.zip'
$checksum64 = '62a5c7d11151ff4896a37f69d3d841d0acd53960'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "sysexp.exe"

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