$packageName = 'processhacker.portable'
$url = 'http://sourceforge.net/projects/processhacker/files/processhacker2/processhacker-2.35-bin.zip/download'
$checksum = '0fa4d6c9348fb1ae0565188fbd8f6a6c9acd0e9d'
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