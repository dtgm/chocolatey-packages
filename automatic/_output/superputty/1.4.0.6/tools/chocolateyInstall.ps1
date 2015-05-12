# generated vars
$packageName = 'superputty'
$packageVersion = '1.4.0.6'
$url = 'https://github.com/jimradford/superputty/releases/download/1.4.0.6/SuperPuTTY-1.4.0.6.zip'
$checksum = 'd2e1b4bf75c7ae4575becc7a98c34cee39557f6e'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path $toolsDir -ChildPath "$packageName-$packageVersion" `
               | Join-Path -ChildPath "$packageName.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null