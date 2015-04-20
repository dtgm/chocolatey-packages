$packageName = 'whatinstartup'
$url = 'http://www.nirsoft.net/utils/whatinstartup.zip'
$checksum = '3e78d40b79c9482ade9c89f1f208991818c0bfa6'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/whatinstartup-x64.zip'
$checksum64 = '76d9d0aa3cc3de16dbc6e8f7abcdae537cd6d8a3'
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