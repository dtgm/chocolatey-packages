$packageName = 'regdllview'
$url = 'http://www.nirsoft.net/utils/regdllview.zip'
$checksum = 'f9f9c8c5b2d9aa93db835c9fba3b8ba0f78e3bc2'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/regdllview-x64.zip'
$checksum64 = '6db47b06953860e8b6e0683f3c477a0e28c38b2d'
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