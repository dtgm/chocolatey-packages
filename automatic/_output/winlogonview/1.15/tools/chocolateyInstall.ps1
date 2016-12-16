$packageName = 'winlogonview'
$url = 'http://www.nirsoft.net/utils/winlogonview.zip'
$checksum = 'd5cf25674e57f5a2c11e923c1c855dfc758e419adf6f4a0764216d41ff6daa57'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null