$packageName = 'winscp.portable'
$url = 'https://sourceforge.net/projects/winscp/files/WinSCP/5.7.7/winscp577.zip/download'
$checksum = 'a27c828d65664d8575a944365f094b48bbb723be'
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