$packageName = 'imagecacheviewer'
$url = 'http://www.nirsoft.net/utils/imagecacheviewer.zip'
$checksum = '8a10be9ac67bf027a6b853bcbdf6db12684c351813b020b9f72e3b7249908b65'
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