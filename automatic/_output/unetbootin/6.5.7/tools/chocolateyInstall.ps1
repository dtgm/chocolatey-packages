$packageName = 'unetbootin'
$url = 'https://sourceforge.net/projects/unetbootin/files/UNetbootin/657/unetbootin-windows-657.exe'
$checksum = '5ccdb95071502bcda431e02ce70c19c4f948d20a5d5fd2bb38af8612c58cc776'
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