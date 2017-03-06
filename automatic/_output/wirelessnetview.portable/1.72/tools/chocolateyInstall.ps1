$packageName = 'wirelessnetview.portable'
$url = 'http://www.nirsoft.net/utils/wirelessnetview.zip'
$checksum = '6ee0fe0cc8e61b42c4859ce8c16a1393c32388e5773a731aa72783b1a439a5a2'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "wirelessnetview.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null