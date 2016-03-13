# generated vars
$packageName = 'keepass.portable'
$url = 'https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.32/KeePass-2.32.zip/download'
$checksum = '5DC67A3CB98E2A63FED21FE94A6658885A9006DC'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "KeePass.exe.gui"
Set-Content -Path $installFile `
            -Value $null