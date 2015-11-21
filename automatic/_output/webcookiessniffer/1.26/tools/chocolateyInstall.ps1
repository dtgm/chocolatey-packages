$packageName = 'webcookiessniffer'
$url = 'http://www.nirsoft.net/utils/webcookiessniffer.zip'
$checksum = 'd31b34a736c3624ef2cc5f69bd950e0604c87071'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/webcookiessniffer-x64.zip'
$checksum64 = '619dfa207f69d002de4536a8eba49eca007bed47'
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