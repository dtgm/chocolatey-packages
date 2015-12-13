$packageName = 'diskmarkstream'
$url = 'http://sourceforge.net/projects/diskmarkstream/files/1.1.1/DiskMarkStream111.zip/download'
$checksum = '4a84fb50d0ab8f80ae216c8964ae7c0b53ebeb48'
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
