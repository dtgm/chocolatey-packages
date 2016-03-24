$packageName = 'hashmyfiles'
$url = 'http://www.nirsoft.net/utils/hashmyfiles.zip'
$checksum = '95d3f628b205d56ce8a755ce0104587a0cae68ae'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/hashmyfiles-x64.zip'
$checksum64 = '07b1896132d1e3ee991815443769357982ca5faf'
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