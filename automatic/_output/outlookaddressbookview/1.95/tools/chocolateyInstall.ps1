$packageName = 'outlookaddressbookview'
$url = 'http://www.nirsoft.net/utils/outlookaddressbookview.zip'
$checksum = 'cd7e8895c68cf5c9267ff147d795dca22b571239'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookaddressbookview-x64.zip'
$checksum64 = '406d3c220ded85852872fa30136169143818bd8c'
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