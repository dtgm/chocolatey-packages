$packageName = 'soundvolumeview'
$url = 'http://www.nirsoft.net/utils/soundvolumeview.zip'
$checksum = '63a55e976ce36afad8f222c1cb27d9b6bbf2a0a5'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/soundvolumeview-x64.zip'
$checksum64 = '19b46dcffaabfa81d28bf74e71786c5f5b3797ed'
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