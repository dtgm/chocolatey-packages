$packageName = 'processhacker.portable'
$url = 'http://sourceforge.net/projects/processhacker/files/processhacker2/processhacker-2.37-bin.zip/download'
$checksum = '3e2c73aea34b1c04d745e71309dc48f4742b5a0d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ProcessHacker.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null