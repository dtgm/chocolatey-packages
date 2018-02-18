$packageName = 'videocacheview.portable'
$url = 'http://www.nirsoft.net/utils/videocacheview.zip'
$checksum = 'f86acb7cd187bdd678ca948e7733dff2ef01c080f9ac57042e75ce2c7bc6a8b5'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/videocacheview-x64.zip'
$checksum64 = '925d26220cad4966bc5ff72e0e58eab60abbbd1e167e74f7427eb0c2cc5ba4b3'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "videocacheview.exe"

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