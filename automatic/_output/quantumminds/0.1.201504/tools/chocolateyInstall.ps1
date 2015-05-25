$packageName = 'quantumminds'
$url = 'http://scienceathome.org/wp-content/uploads/2015/04/QuantumMindsWin.zip'
$checksum = '8a2d2c10a7fa4806c48a780e29adb2e0f3bd9f4e'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipDir = Join-Path $toolsDir "Win"
$installFile = Join-Path $zipDir "QuantumMinds.exe"

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
