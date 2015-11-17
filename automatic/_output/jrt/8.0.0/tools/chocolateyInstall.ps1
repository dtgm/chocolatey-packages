$packageName = 'jrt'
$url = 'http://thisisudax.org/downloads/JRT.exe'
$checksum = '2e6b213a9c29fc8307f9ae446a3da4be1efd405a'
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