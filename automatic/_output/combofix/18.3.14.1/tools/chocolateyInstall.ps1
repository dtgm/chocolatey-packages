$packageName = 'combofix'
$url = 'https://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$checksum = '522bc9db97767af65babd0783a95a684c214616d8f2316bfc88c2d5610148f22'
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