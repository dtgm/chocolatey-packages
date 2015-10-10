$packageName = 'diskmarkstream'
$url = 'http://sourceforge.net/projects/diskmarkstream/files/1.1.0/DiskMarkStream110.zip/download'
$checksum = 'f471716f91e1dabcc5f62d25cce8ff7abf1fed2f'
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
