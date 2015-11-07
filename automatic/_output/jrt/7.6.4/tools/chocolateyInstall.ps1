$packageName = 'jrt'
$url = 'http://thisisudax.org/downloads/JRT.exe'
$checksum = 'e353aee99d919ca1b5f00f81de3d57c769438ce2'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

# create an empty sidecar metadata file for closed-source shimgen.exe to indicate gui
Set-Content -Path ("$installFile.gui") `
            -Value $null