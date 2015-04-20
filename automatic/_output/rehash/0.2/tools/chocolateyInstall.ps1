# generated vars
$packageName = 'rehash'
$url = 'http://sourceforge.net/projects/rehash/files/rehash/0.2/rehash-0.2-win.zip/download'
$checksum = '53b32ee2abea382e48eca7ac7fe02088498869b1'

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
                         -ChildPath "rehash.exe.gui"
Set-Content -Path $installFile `
            -Value $null