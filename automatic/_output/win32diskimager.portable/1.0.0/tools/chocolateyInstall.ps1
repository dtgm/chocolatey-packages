# generated vars
$packageName = 'win32diskimager.portable'
$url = 'https://sourceforge.net/projects/win32diskimager/files/Archive/Win32DiskImager-1.0.0-binary.zip'
$checksum = 'd3cae3fff1aa5e74e9f4cd3ca48a6bd9586aa573243f1603fffbc03470033e14'

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
                         -ChildPath "Win32DiskImager.exe.gui"
Set-Content -Path $installFile `
            -Value $null