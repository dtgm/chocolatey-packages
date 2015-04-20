$packageName = 'diskmarkstream'
$url = 'http://sourceforge.net/projects/diskmarkstream/files/1.0.0/DiskMarkStream10.zip/download'
$checksum = '2154162bb621404d27d7e5bff33296e7c41bcf41'
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
