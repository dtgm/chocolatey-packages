$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = '13109cd13f60978642c754d2f05bbbd88344f74f2f2e15c87b9de5d6d7be2d85'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = '555d5ca146641a7c42e618b461462886b63828a790b1cc20c6d6fe0d7609e5cc'
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