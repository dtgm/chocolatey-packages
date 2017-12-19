$packageName = 'pngquant'
$url = 'https://pngquant.org/pngquant-windows.zip'
$checksum = 'af2c7362fda3f24b45b662f5e820ce1775b751aec874c4a315cf3b97decda7aa'
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

