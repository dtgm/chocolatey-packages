$packageName = 'folderchangesview'
$url = 'http://www.nirsoft.net/utils/folderchangesview.zip'
$checksum = '3f26822950c0b7b47f7c3056198d26e2595e050fe6b536cb7bfa241733d202ef'
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