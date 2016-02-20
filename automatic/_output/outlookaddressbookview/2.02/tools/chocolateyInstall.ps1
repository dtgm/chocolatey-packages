$packageName = 'outlookaddressbookview'
$url = 'http://www.nirsoft.net/utils/outlookaddressbookview.zip'
$checksum = 'c9e3ecf7f29dd877120245f2c6143521029e0ade'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookaddressbookview-x64.zip'
$checksum64 = 'aa56e688e16af0bb214c1400a6e96db6d2a53216'
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