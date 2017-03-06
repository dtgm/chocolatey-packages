$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = 'b0e0c09b3b75e0db665202778954c98173d8aab82a939ff06c5b52b95aa4d0bc'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = '12b4437cd1c14ac0f4c915b93dedf3da8d48db3577a88cc2aa9143c70b5f5451'
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