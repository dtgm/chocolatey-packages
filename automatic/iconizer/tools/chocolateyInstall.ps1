$packageName = '{{PackageName}}'
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$checksum64 = '{{Checksumx64}}'
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