$packageName = 'pngyu'
$url = 'http://nukesaq88.github.io/Pngyu//download/Pngyu_win_101.zip'
$checksum = 'd8cf13e6f18d997a89fa5bb835ae13eeefaa92935b0558a58ea579b6f972882e'
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