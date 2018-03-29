# generated vars
$packageName = 'keepass.portable'
$url = 'https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.38/KeePass-2.38.zip'
$checksum = 'DB71CBA72C321ECAEDA7EEC6F4E71E215864D4113AB9E29DC97AD4D56C80A7A9'

# static vars
$checksumType = 'sha256'
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