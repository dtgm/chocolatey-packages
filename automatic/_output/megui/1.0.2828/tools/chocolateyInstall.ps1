$packageName = 'megui'
$url = 'https://sourceforge.net/projects/megui/files/megui-stable/2828/MeGUI-2828-32.zip/download'
$checksum = '626d207650540228ae4511ab2558e8dd99f024057bd46854eaf98d77666545fe'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
Set-Content -Path "$installFile.gui" `
            -Value $null