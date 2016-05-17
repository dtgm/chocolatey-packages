$packageName = 'unetbootin'
$url = 'https://sourceforge.net/projects/unetbootin/files/UNetbootin/625/unetbootin-windows-625.exe'
$checksum = 'be2f2f451ffe114c0ee80381c951e16424392ac3'
$checksumType = 'sha1'
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