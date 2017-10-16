# generated vars
$packageName = 'keepass.portable'
$url = 'https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.37/KeePass-2.37.zip/download'
$checksum = '81E56E80B8CA02688C0C654EC0F974F4DA17D2AD'

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