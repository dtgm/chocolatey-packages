$packageName = 'diskmarkstream'
$url = 'https://sourceforge.net/projects/diskmarkstream/files/1.1.1/DiskMarkStream111.zip/download'
$checksum = '842f7c082ea166562e44b3b2511dcd567134fcb4'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "DiskMarkStream.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
