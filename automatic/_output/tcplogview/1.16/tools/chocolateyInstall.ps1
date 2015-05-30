$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = '3e509b80f7c210df044046ffb6847e0d75218aa2'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = 'c5997fa074c796a970b1b4913b9c7f4cff305e3e'
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