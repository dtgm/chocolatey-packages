$packageName = 'jumplistsview'
$url = 'http://www.nirsoft.net/utils/jumplistsview.zip'
$checksum = '2e3447efac788110292e8bb3438bbdb24246b46cedc873a2d55ef87c152705b9'
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