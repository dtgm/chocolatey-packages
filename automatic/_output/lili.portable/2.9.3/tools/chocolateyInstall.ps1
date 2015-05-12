$packageName = 'lili.portable'
$url = 'http://download.tuxfamily.org/lilicreator/stable-portable/LinuxLive USB Creator 2.9.3.zip'
$checksum = '820b439d7b18552245457996abb428de3339c14d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "LinuxLive USB Creator 2.9.3" |
               Join-Path -ChildPath "LiLi USB Creator.exe.gui"
Set-Content -Path "$installFile" `
            -Value $null