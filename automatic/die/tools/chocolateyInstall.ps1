$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Debug "Create empty sidecar metadata files for shimgen.exe to designate gui"
$die = Join-Path $toolsDir "die.exe"
$diel = Join-Path $toolsDir "diel.exe"
Set-Content -Path ("$die.gui") -Value $null
Set-Content -Path ("$diel.gui") -Value $null

Write-Debug "Prevent overwriting shims just created"
$die = Join-Path $toolsDir "stuff\die.exe"
$diel = Join-Path $toolsDir "stuff\diel.exe"
Set-Content -Path ("$die.ignore") -Value $null
Set-Content -Path ("$diel.ignore") -Value $null