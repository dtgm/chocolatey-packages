$packageName = 'gdiview'
$url = 'http://www.nirsoft.net/utils/gdiview.zip'
$checksum = '79b1b5ba34484f879b87f95b479c3db19d04697b'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/gdiview-x64.zip'
$checksum64 = '3281a74f28172f84110d620a3ee1128609ba2619'
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