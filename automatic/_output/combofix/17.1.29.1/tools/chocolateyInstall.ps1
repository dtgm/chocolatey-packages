$packageName = 'combofix'
$url = 'https://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$checksum = '42f27ff94502f3f0e91cafa96375aa060db54ee1cb02816db0d6fcd07796c219'
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