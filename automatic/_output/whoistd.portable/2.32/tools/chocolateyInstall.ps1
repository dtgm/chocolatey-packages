$packageName = 'whoistd.portable'
$url = 'http://www.nirsoft.net/utils/whoistd152.zip'
$checksum = '24c48c6948e7f2029789f4a1543e6593bf132cd3d841fdac167bed9b9f3d683e'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "whoistd.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null