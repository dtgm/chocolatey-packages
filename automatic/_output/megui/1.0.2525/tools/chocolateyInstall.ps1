$packageName = 'megui'
$url = 'http://sourceforge.net/projects/megui/files/megui-stable/2525/MeGUI_2525_x86.zip/download'
$checksum = '7a6570c78986cc487e87ee651699829e3ffcbda4'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
Set-Content -Path "$installFile.gui" `
            -Value $null