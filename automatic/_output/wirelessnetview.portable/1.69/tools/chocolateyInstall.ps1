$packageName = 'wirelessnetview.portable'
$url = 'http://www.nirsoft.net/utils/wirelessnetview.zip'
$checksum = '9bc0e3808389da2a4aaf7a291d8113683f4a8e34'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "wirelessnetview.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null