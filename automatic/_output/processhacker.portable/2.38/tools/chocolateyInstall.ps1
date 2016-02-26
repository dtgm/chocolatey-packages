$packageName = 'processhacker.portable'
$url = 'https://sourceforge.net/projects/processhacker/files/processhacker2/processhacker-2.38-bin.zip/download'
$checksum = 'f9ae9036e657393599d3282dddda4ccbb33ae11b'
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