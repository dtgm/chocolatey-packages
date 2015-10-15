$packageName = 'soundvolumeview'
$url = 'http://www.nirsoft.net/utils/soundvolumeview.zip'
$checksum = 'd3b7bff3af1ebfd0fcb6db5f979ab4e453b2fdff'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/soundvolumeview-x64.zip'
$checksum64 = 'fa8258150319ce8fe29b6e3cc487245656d3f862'
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