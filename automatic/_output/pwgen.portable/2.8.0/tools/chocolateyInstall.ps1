# generated vars
$packageName = 'pwgen.portable'
$url = 'https://sourceforge.net/projects/pwgen-win/files/PWGen/2.8.0/PWGen-2.8.0.zip'
$checksum = '43f67a57ae53271f63a8b324934d7e4b64341bd4'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "$($packageName).exe.gui"
Set-Content -Path $installFile `
            -Value $null