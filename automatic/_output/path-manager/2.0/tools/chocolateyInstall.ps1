$packageName = 'path-manager'
$url = 'http://sourceforge.net/projects/pathtool/files/Executable/Path%20Manager_2.0.exe/download'
$checksum = '1aaa1f51440732ff504959cdf634fa169eb0c809'
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