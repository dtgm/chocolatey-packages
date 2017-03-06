$packageName = 'aida64-business'
$url = 'http://download.aida64.com/aida64business575.zip'
$checksum = '7c5fef363a4f6b2401f3a5408ce3c2cd0594db8ff14a14a79758a5ffe236ba28'
$checksumType = 'sha256'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "aida64.exe"
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