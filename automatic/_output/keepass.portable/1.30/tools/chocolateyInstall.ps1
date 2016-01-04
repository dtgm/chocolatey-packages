# generated vars
$packageName = 'keepass.portable'
$url = 'http://sourceforge.net/projects/keepass/files/KeePass%201.x/1.30/KeePass-1.30.zip/download'
$checksum = '0887AB72B926C4D70834083D7B799422EEF0674B'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -Url64bit "" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "KeePass.exe.gui"
Set-Content -Path $installFile `
            -Value $null