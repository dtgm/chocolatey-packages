$packageName = 'soundvolumeview'
$url = 'http://www.nirsoft.net/utils/soundvolumeview.zip'
$checksum = '0420cf5618ddf6bdabc8fce98ae5e2cac4937fad'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/soundvolumeview-x64.zip'
$checksum64 = 'e56540cd593ad3f254fca2987c843845dec0dd07'
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