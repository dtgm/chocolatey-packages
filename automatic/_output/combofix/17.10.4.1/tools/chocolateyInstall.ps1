$packageName = 'combofix'
$url = 'https://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$checksum = 'e9b8320ad31d82eef2ce6eb451ba5b494bd4c8c671ca25044c67f0a004d6ffc2'
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