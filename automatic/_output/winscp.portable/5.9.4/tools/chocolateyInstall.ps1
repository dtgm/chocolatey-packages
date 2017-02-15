$packageName = 'winscp.portable'
$url = 'https://sourceforge.net/projects/winscp/files/WinSCP/5.9.4/WinSCP-5.9.4-Portable.zip'
$checksum = ''
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