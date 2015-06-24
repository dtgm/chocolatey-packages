$packageName = 'diskdump'
$url = 'http://www.programmingunlimited.net/files/diskdump-v0.1.0.zip'
$checksum = '7eaefedd7fdc2ff9a729347f23bdba441a35b0ba'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
$installFile = Join-Path $toolsDir "DiskDump.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null