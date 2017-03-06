$packageName = 'passwordscan.portable'
$url = 'http://www.nirsoft.net/utils/passwordscan.zip'
$checksum = '22aa5624989b0f5898b489f036e74e927adf9f79efbbf1cc78e6b6f3d4800e23'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "passwordscan.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null