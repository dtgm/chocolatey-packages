$packageName = 'dnsquerysniffer'
$url = 'http://www.nirsoft.net/utils/dnsquerysniffer.zip'
$checksum = 'c372702deb6c3b74b64cdefb286de1c0081c61f3e9dced9c415358fa3b7b3233'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
$checksum64 = '19c16cdd72e57b48e35296a64d02844bc49026f2a430ab5cc8a05e0b683a370f'
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