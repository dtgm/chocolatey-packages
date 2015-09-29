$packageName = 'winscp.portable'
$url = 'http://sourceforge.net/projects/winscp/files/WinSCP/5.7.5/winscp575.zip/download'
$checksum = 'bf4b22a119ffd725f3086afae3858161e2a3072a'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "WinSCP.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null