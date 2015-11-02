$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = '2543ab499f7112d7b07c463e728702c98fe55583'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = 'bfdf1aefb04f4e21dc5ba5b088896fef6e33f2f2'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "produkey.exe"

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