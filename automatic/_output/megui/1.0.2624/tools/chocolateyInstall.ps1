$packageName = 'megui'
$url = 'http://sourceforge.net/projects/megui/files/megui-stable/2624/MeGUI_2624_x86.zip/download'
$checksum = 'bff6293506afa21d2ef5cc73dec1de78739452dc'
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