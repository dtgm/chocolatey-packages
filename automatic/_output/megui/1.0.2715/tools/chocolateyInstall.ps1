$packageName = 'megui'
$url = 'https://sourceforge.net/projects/megui/files/megui-stable/2715/MeGUI-2715-32.zip'
$checksum = 'd3bbc38f2aee4edeaef42b091db48d0cef767931f2fe8d654aa1cb9220654fe1'
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