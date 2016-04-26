$packageName = 'diskmarkstream'
$url = 'https://sourceforge.net/projects/diskmarkstream/files/1.1.2/DiskMarkStream112.zip'
$checksum = '842f7c082ea166562e44b3b2511dcd567134fcb4'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "DiskMarkStream.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
