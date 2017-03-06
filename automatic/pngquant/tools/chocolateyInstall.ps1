$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
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

