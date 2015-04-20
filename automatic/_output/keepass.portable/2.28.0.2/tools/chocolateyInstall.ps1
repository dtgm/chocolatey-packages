# generated vars
$packageName = 'keepass.portable'
$url = 'http://sourceforge.net/projects/keepass/files/KeePass%202.x/2.28/KeePass-2.28.zip/download'
$checksum = '7FE452CF361E48402A00DC27094EB7BFE4F34BD4'

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
$installFile = Join-Path $toolsDir "KeePass.exe.gui"
Set-Content -Path $installFile `
            -Value $null