# generated vars
$packageName = 'superputty'
$packageVersion = '1.4.0.5'
$url = 'http://www.jimradford.com/projects/superputty/downloads/SuperPutty-1.4.0.5.zip'
$checksum = 'be7f5884c1e62136b82d54a0917b9e941d19467e'

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