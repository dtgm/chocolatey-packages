$packageName = 'wnetwatcher.portable'
$url = 'http://www.nirsoft.net/utils/wnetwatcher.zip'
$checksum = '115be101b2fadfa26e5453236533dcbd0e6ee9ec'
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