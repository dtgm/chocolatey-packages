$packageName = 'jrt'
$url = 'https://downloads.malwarebytes.com/file/jrt/'
$checksum = '4d89521cd0ee33790e4a19dc08d34b3b0be404def4a5e30561e254cb1bb201f1'
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