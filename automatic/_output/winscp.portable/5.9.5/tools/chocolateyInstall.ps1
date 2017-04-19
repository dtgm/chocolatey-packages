$packageName = 'winscp.portable'
$url = 'https://sourceforge.net/projects/winscp/files/WinSCP/5.9.5/WinSCP-5.9.5-Portable.zip'
$checksum = '2cdf922660804fcf1d15f6cac7e1634e94a6597f58b1cdc388414302543636b7'
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