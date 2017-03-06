$packageName = 'processthreadsview'
$url = 'http://www.nirsoft.net/utils/processthreadsview.zip'
$checksum = '5be36f1d373d251a6d2f6abeb8e4a5df432d35e21864401c06a17e20b9ac5d09'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/processthreadsview-x64.zip'
$checksum64 = 'bfff3b996bbc029bee2be965492b688f07b2d00e1929eb0310d115a23962b7c3'
$checksumType64 = 'sha256'
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