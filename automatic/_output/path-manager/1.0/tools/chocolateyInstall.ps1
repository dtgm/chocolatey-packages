$packageName = 'path-manager'
$url = 'http://sourceforge.net/projects/pathtool/files/Executable/Path%20Manager_1.0.exe/download'
$checksum = 'f77acd14f26dd2adcb0ce84bfc75aece66cd6f03'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
# create empty sidecar so shimgen creates shim for GUI rather than console
$shimGui = $installFile + ".gui"
Set-Content -Path $shimGui `
            -Value $null