# generated vars
$packageName = 'antidupl'
$url = 'https://sourceforge.net/projects/antidupl/files/bin/AntiDupl.NET-2.3.6.exe'
$checksum = '31558c2dcb18470803130417c83a2683371feab6'

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
                         -ChildPath "AntiDupl.NET-2.3.6" `
               | Join-Path -ChildPath "AntiDupl.NET.exe.gui"
Set-Content -Path $installFile `
            -Value $null