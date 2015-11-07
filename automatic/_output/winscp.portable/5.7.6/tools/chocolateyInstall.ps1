$packageName = 'winscp.portable'
$url = 'http://sourceforge.net/projects/winscp/files/WinSCP/5.7.6/winscp576.zip/download'
$checksum = '35007348f309a5518fdecc8ce1cfb5e05ddb4179'
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