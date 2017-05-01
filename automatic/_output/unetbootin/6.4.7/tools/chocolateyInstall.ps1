$packageName = 'unetbootin'
$url = 'https://sourceforge.net/projects/unetbootin/files/UNetbootin/647/unetbootin-windows-647.exe'
$checksum = '4985866361e76fea8bd4fa197a35823f883af2e96a8340fcf78626b3b96bbfc5'
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