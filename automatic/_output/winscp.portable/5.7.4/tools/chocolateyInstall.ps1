$packageName = 'winscp.portable'
$url = 'http://sourceforge.net/projects/winscp/files/WinSCP/5.7.4/winscp574.zip/download'
$checksum = '8ca3b5f7c5f786f731438f718ceff4f7dafc3ee3'
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