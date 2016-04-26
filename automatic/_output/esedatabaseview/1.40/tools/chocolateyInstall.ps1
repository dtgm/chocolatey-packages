$packageName = 'esedatabaseview'
$url = 'http://www.nirsoft.net/utils/esedatabaseview.zip'
$checksum = 'c8d8b52eb65fa8018a7c98e24e5d7b2f8c881cf2'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null