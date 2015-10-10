$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = 'df9d5a0e39f82c04a5245696463ebcd04e5fded0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = 'f48c2ba4825fbf672d0eead8abff5a57c0c08538'
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