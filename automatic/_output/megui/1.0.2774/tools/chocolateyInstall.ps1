$packageName = 'megui'
$url = 'https://sourceforge.net/projects/megui/files/megui-stable/2774/MeGUI-2774-32.zip/download'
$checksum = '7e62de3336fdd90bd86d6f5435d005a1330746fc59d83be2108e64091e281b16'
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