$packageName = 'unetbootin'
$url = 'https://sourceforge.net/projects/unetbootin/files/UNetbootin/655/unetbootin-windows-655.exe'
$checksum = '26d0fdc45df268563032a742c78745db0b860bc54e0091e61b6104aac7023bd9'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Write-Verbose "Create an empty sidecar metadata file for shimgen.exe to designate gui"
Set-Content -Path ("$installFile.gui") `
            -Value $null