# generated vars
$packageName = 'win32diskimager.portable'
$url = 'http://sourceforge.net/projects/win32diskimager/files/Archive/Win32DiskImager-0.9.5-binary.zip/download'
$checksum = '75e886d0941b0de14b463a55609125631b307398'

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
                         -ChildPath "Win32DiskImager.exe.gui"
Set-Content -Path $installFile `
            -Value $null