$packageName = 'ofview.portable'
$url = 'http://www.nirsoft.net/utils/ofview.zip'
$checksum = '8f3ce04cbfd074ff0c8d6d361472dd27d5d4c53d675fb385a957ca8160a1d303'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/ofview-x64.zip'
$checksum64 = 'fea1383fe0c14579a6777694c1052f874959ab484236f7be5b15bfc61f9df982'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ofview.exe"

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