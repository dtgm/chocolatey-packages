$packageName = 'winscp.portable'
$url = 'https://sourceforge.net/projects/winscp/files/WinSCP/5.9.3/WinSCP-5.9.3-Portable.zip'
$checksum = '543e80149646ae47a2873ad415c5595db341c4e8'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "WinSCP.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null