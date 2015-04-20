# generated vars
$packageName = 'regulator'
$url = 'http://sourceforge.net/projects/regulator/files/The%20Regulator/Regulator2.0%20Binaries%20Only/Regulator20Bin.zip/download'
$checksum = 'd8805bbdd56e74c4c10d8fdb6bc9213fe583683c'

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
                         -ChildPath "The Regulator 2.0" |
               Join-Path -ChildPath "Regulator.exe.gui"
Set-Content -Path $installFile `
            -Value $null