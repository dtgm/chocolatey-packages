$packageName = 'pngquant'
$url = 'https://pngquant.org/pngquant-windows.zip'
$checksum = 'bcd27d893f6dcd878cd8a557b6ebb69365b746a64bccc3142ed5111f1f2f8044'
$checksumType = 'sha256'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $toolsDir `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Write-Verbose "Creating .ignore sidecar files for .bat filetype to prevent shims"
$files = Get-ChildItem $toolsDir -Include *.bat -Recurse
foreach ($file in $files) {
  New-Item "$file.ignore" -ItemType file -Force | Out-Null
}

