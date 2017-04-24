$packageName = 'unetbootin'
$url = 'https://sourceforge.net/projects/unetbootin/files/UNetbootin/638/unetbootin-windows-638.exe'
$checksum = '29c7384d88ac73af12b5213d5513a97708956b66014e7e316fac5cff5929e7a5'
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