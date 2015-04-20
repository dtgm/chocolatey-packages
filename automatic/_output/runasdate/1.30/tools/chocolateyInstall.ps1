$packageName = 'runasdate'
$url = 'http://www.nirsoft.net/utils/runasdate.zip'
$checksum = 'd26eb51fdc013007ddc0242eca602b2a496984ea'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/runasdate-x64.zip'
$checksum64 = '22b31f513d7b1f1919d3c7e1e37b9683a2ac7ce5'
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