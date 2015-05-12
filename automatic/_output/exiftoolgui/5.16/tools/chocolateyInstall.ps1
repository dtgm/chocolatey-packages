$packageName = 'exiftoolgui'
$url = 'http://u88.n24.queensu.ca/~bogdan/exiftoolgui516.zip'
$checksum = 'b16fbeb7a2cb0842146f8f7a57983998b7a93695'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "$packageName" |
               Join-Path -ChildPath "$($packageName).exe.gui"

Set-Content -Path "$installFile" `
            -Value $null