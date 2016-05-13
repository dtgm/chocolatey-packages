$packageName = 'wnetwatcher.portable'
$url = 'http://www.nirsoft.net/utils/wnetwatcher.zip'
$checksum = 'a2204005fbeaa8f0dded4f7e591b3f8e41e82b48'
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