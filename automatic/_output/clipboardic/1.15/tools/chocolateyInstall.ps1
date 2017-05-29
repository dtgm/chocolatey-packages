$packageName = 'clipboardic'
$url = 'http://www.nirsoft.net/utils/clipboardic.zip'
$checksum = '1a061abef1c8899cd199ae426ef35659e2ce219e0acddb427c74c52c517ef7dc'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null