$packageName = 'outlookaddressbookview'
$url = 'http://www.nirsoft.net/utils/outlookaddressbookview.zip'
$checksum = '7fd7cd23a8855183e2d13b8808a637d39929517dfb02c9be45acbbb154088d16'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookaddressbookview-x64.zip'
$checksum64 = 'c28bbdeeb6077a22cf7b323beb0eedece0cf4c6545a2723d7069d598a1bcc679'
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