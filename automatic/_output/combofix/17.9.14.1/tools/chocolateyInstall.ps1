$packageName = 'combofix'
$url = 'https://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$checksum = '7a9f705506f29af83c9d2c89fd379a62a65aa6331e26d805b7b6817ce1e2cfc8'
$checksumType = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "ComboFix.exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Write-Verbose "Create an empty sidecar metadata file for shimgen.exe to designate executable as GUI."
Set-Content -Path ("$installFile.gui") `
            -Value $null