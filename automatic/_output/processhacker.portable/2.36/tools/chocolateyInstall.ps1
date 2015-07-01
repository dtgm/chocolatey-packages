$packageName = 'processhacker.portable'
$url = 'http://sourceforge.net/projects/processhacker/files/processhacker2/processhacker-2.36-bin.zip/download'
$checksum = 'd11b09885431f38c0fb3fc49eb6386630e5a4096'
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