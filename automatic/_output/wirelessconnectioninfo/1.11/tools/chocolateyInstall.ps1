$packageName = 'wirelessconnectioninfo'
$url = 'http://www.nirsoft.net/utils/wirelessconnectioninfo.zip'
$checksum = '929fe5b9f4f6849e241ae572b2cfccb250a88b66'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null