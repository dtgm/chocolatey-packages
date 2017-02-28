$packageName = 'hashmyfiles'
$url = 'http://www.nirsoft.net/utils/hashmyfiles.zip'
$checksum = 'af4391abe6a8c3c52d2f96b0164ed50f407b05508110a3b84a8deca846755fa6'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/hashmyfiles-x64.zip'
$checksum64 = 'd8f6dee8db86889da4b8346d610619fba3d1de661f561fb7d6c4b6aa51e7c8bf'
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