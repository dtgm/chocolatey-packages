# generated vars
$packageName = 'duplicati.portable'
$url = 'http://duplicati.googlecode.com/files/Duplicati 1.3.4.zip'
$checksum = 'f386945f85cc5310f0091ec473d3c3a3fce7ace0'

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
$installFile = Join-Path $toolsDir -ChildPath "Duplicati" `
               | Join-Path -ChildPath "Duplicati.exe.gui"
Set-Content -Path $installFile `
            -Value $null