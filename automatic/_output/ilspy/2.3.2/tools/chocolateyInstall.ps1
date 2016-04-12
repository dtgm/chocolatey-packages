# generated vars
$packageName = 'ilspy'
$url = 'https://github.com/icsharpcode/ILSpy/releases/download/v2.3.2/ILSpy_Master_2.3.2_Binaries.zip'
$checksum = '8e08b8cad1abe87866d6b32d2cc345a5'

# static vars
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
Set-Content -Path ("$toolsDir\$packageName.exe.gui") `
            -Value $null