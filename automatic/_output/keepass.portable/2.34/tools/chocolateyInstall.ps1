# generated vars
$packageName = 'keepass.portable'
$url = 'https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.34/KeePass-2.34.zip'
$checksum = '27A790F7E554527D79E801F91081DC3D7655F25A'

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