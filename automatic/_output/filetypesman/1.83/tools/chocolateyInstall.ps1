$packageName = 'filetypesman'
$url = 'http://www.nirsoft.net/utils/filetypesman.zip'
$checksum = 'c46cdf5dc1d4c6233b2e900f13685b07553a5f7b184d579db4a5a5b8b22017c6'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/filetypesman-x64.zip'
$checksum64 = 'a92b316f3b14ace527df18fd39f9dee3af6153a758d4301df54718a9eb07a605'
$checksumType64 = 'sha256'
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