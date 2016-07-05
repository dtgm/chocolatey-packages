$packageName = 'pngoo'
$url = 'https://pngquant.org/PNGoo.0.1.1.zip'
$checksum = '962bea33f6ba38f6f1bde9dbf910831fedd0a70a89574e8a9aa6c222c2faa2fe'
$checksumType = 'sha256'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $toolsDir `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Write-Verbose "Creating .gui sidecar for shimgen.exe"
$file = Get-ChildItem $toolsDir -Include "PNGoo.exe" -Recurse
New-Item "$file.gui" -ItemType file -Force | Out-Null