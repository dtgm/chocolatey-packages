$packageName = 'die'
$url = 'https://dl.dropboxusercontent.com/s/h3sjlmhgcx7qfx2/DIE_1.01_win.zip'
$checksum = '518c4601e6f50ae4801dc9aef7f87a0fb091433531ce84f66457129204b06d3f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$die = Join-Path $toolsDir "die.exe"
$diel = Join-Path $toolsDir "diel.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Create empty sidecar metadata files for shimgen.exe to designate gui"
Set-Content -Path ("$die.gui") `
            -Value $null
Set-Content -Path ("$diel.gui") `
            -Value $null