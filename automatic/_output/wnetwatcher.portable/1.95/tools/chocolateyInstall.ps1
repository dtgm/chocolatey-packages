$packageName = 'wnetwatcher.portable'
$url = 'http://www.nirsoft.net/utils/wnetwatcher.zip'
$checksum = 'e4007c0f4b9c8acec6eec760ac11174ea3cddef1'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "wnetwatcher.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null