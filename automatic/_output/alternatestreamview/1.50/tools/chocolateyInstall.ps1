$packageName = 'alternatestreamview'
$url = 'http://www.nirsoft.net/utils/alternatestreamview.zip'
$checksum = '60e6c46cca00aadd13d2fe765e1327b874780c62'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/alternatestreamview-x64.zip'
$checksum64 = '6e2a4315ed4a725d1033a3cdac48548daf34bdb6'
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