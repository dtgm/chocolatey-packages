$packageName = 'lili.portable'
$url = 'http://download.tuxfamily.org/lilicreator/stable-portable/LinuxLive USB Creator 2.9.4.zip'
$checksum = 'baeed5be47d55b3927e04f66c5d339dc22a3e124'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "lili.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "LinuxLive USB Creator 2.9.4" |
               Join-Path -ChildPath "LiLi USB Creator.exe.gui"
Set-Content -Path "$installFile" `
            -Value $null