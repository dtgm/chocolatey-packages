$packageName = 'fbcacheview'
$url = 'http://www.nirsoft.net/utils/fbcacheview.zip'
$checksum = '7ffa4b63de826c02bfb1c406b3a32c7c9544c8c700803f65f6ee6a881a75c31b'
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