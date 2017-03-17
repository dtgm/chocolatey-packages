$packageName = 'jrt'
$url = 'https://downloads.malwarebytes.com/file/jrt/'
$checksum = '51329ded380cf9aa78abef44d135df1235e434669d0088ba63cf42202f9cf0f7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Write-Verbose "Create an empty sidecar metadata file for closed-source shimgen.exe to indicate gui"
Set-Content -Path ("$installFile.gui") `
            -Value $null