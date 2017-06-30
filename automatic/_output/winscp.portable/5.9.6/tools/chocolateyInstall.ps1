$packageName = 'winscp.portable'
$url = 'https://sourceforge.net/projects/winscp/files/WinSCP/5.9.6/WinSCP-5.9.6-Portable.zip/download'
$checksum = '0d7cff708a3b7317363ad041c297b55c19616a655912b5c63c07bc6c3398fa01'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "WinSCP.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null