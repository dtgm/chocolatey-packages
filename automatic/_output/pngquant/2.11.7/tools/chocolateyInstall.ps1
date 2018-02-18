$packageName = 'pngquant'
$url = 'https://pngquant.org/pngquant-windows.zip'
$checksum = '2ec61729baeec7b0f1d7c11b5444d0419362b4ddfe2fc1f8d010710e71e2815b'
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

