$packageName = 'processactivityview'
$url = 'http://www.nirsoft.net/utils/processactivityview.zip'
$checksum = '22f4b449374250a5908538ae52fb97c485e04bf4'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/processactivityview-x64.zip'
$checksum64 = '4247db5d35d39fca928e621c2faa552b17351f9d'
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