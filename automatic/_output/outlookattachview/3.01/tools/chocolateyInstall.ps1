$packageName = 'outlookattachview'
$url = 'http://www.nirsoft.net/utils/outlookattachview.zip'
$checksum = '4bf05eb66d730286f57eb156d4043e53ce9f421f9c95101986a86045b45eef43'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookattachview-x64.zip'
$checksum64 = 'e51f643edd7362545acdee734d33dfda8f73d4ed0e0a702831d722dbf07b78c4'
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