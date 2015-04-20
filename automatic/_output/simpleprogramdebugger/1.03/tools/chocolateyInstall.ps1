$packageName = 'simpleprogramdebugger'
$url = 'http://www.nirsoft.net/utils/simpleprogramdebugger.zip'
$checksum = '8a86742f40811bf9386cf20de384e94b0c9674b2'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/simpleprogramdebugger-x64.zip'
$checksum64 = '369ec3bfac081714aed0fd8a0969ccacce1fdfb8'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null