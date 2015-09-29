$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = 'ba1b50c3016473551a5d278dda1d9c8f6b43eb8a'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = '9428ee6da7f45548b3667f3a16c347128ba0ebeb'
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