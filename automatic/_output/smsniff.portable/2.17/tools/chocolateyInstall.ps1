$packageName = 'smsniff.portable'
$url = 'http://www.nirsoft.net/utils/smsniff.zip'
$checksum = '66248bd81c4d032733bcd4eec6b6faa2f17b8cb0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/smsniff-x64.zip'
$checksum64 = 'b04372597052fd0084ba4c198bddb81854eeff9c'
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