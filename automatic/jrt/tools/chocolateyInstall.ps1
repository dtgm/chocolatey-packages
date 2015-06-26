$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Url64bit "" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

# create an empty sidecar metadata file for closed-source shimgen.exe to indicate gui
Set-Content -Path ("$installFile.gui") `
            -Value $null