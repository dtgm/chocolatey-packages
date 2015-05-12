$packageName = 'pyexiftoolgui'
$url = 'https://github.com/hvdwolf/pyExifToolGUI/releases/download/0.5/pyExifToolGUI-0.5.zip'
$checksum = 'db5d91631b149c800c2b821bbd851ac63ead2847'
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