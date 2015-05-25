$packageName = 'winscp.portable'
$url = 'http://sourceforge.net/projects/winscp/files/WinSCP/5.7.3/winscp573.zip/download'
$checksum = 'cdebe75eee2ef4c291d8afc745cd7899612645f7'
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