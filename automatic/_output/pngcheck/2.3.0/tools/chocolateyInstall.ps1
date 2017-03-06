$packageName = 'pngcheck'
$url = 'https://sourceforge.net/projects/png-mng/files/pngcheck/2.3.0/pngcheck-2.3.0-win32.zip/download'
$checksum = '340cd1c752fdc80d11873acd65734f1f215add9d3cfe438670828eed8a4446f4'
$checksumType = 'sha256'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $toolsDir `
                             -Checksum $checksum `
                             -ChecksumType $checksumType