$packageName = 'sysexp.portable'
$url = 'http://www.nirsoft.net/utils/sysexp.zip'
$checksum = '02fdde2c89f553abef26b8ba3a73ba43ec6a8105d62a65807a58044dda9c99f5'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/sysexp-x64.zip'
$checksum64 = '896e480fb7d05aecb7d16a634971e44ae42051c5353f74b87aaf3fb439361028'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "sysexp.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null