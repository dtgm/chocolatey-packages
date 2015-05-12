$packageName = 'diskmarkstream'
$url = 'http://sourceforge.net/projects/diskmarkstream/files/1.0.1/DiskMarkStream101.zip/download'
$checksum = 'a32abafaceed7aa9e5aa7abd3d0e344359f5ebb0'
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
