$packageName = 'myuninst'
$url = 'http://www.nirsoft.net/utils/myuninst.zip'
$checksum = '22f2fc8d324fcd8d36698e0496d7a4c5b69a09f3a36de533f99c83ba4446f799'
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