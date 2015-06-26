$packageName = 'pathmanager'
$url = 'http://sourceforge.net/projects/pathmanager/files/Path%20Manager/PathManager-1.1.1/PathManager-1.1.1.exe/download'
$checksum = '5280f92b620a6b5925ef65c83b61243865bc3a2e'
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