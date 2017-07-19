$packageName = 'nk2edit.portable'
$url = 'http://www.nirsoft.net/utils/nk2edit.zip'
$checksum = '64fbb0b537d76cc4fcd2913a649c7d6c240862b18b96daa3fa8d22afeccd0601'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/nk2edit-x64.zip'
$checksum64 = 'ebdb624dc7bec6930164b62666df7d6b23ae8f6e78163f7769ec625c269232ce'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "nk2edit.exe"

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