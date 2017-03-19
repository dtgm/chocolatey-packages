# generated vars
$packageName = 'superputty.portable'
$packageVersion = '1.4.0.8'
$url = 'https://github.com/jimradford/superputty/releases/download/1.4.0.8/SuperPuTTY-1.4.0.8.zip'
$checksum = '930986980dcf930a80342a3a8d22bb00ba495f4d8d2f56c2509485baca82a01f'

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
$installFile = Join-Path $toolsDir -ChildPath "$packageName-$packageVersion" `
               | Join-Path -ChildPath "$packageName.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null