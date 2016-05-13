$packageName = 'processhacker.portable'
$url = 'https://sourceforge.net/projects/processhacker/files/processhacker2/processhacker-2.39-bin.zip'
$checksum = '8e8f8423d163d922242b8b7d85427664f77edc97'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ProcessHacker.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null