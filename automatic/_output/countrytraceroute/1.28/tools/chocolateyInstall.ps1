$packageName = 'countrytraceroute'
$url = 'http://www.nirsoft.net/utils/countrytraceroute.zip'
$checksum = '1ccc01bd1992fa0c9da37c02a9b28665d325a57478714c7fdbb6e24a4f16ca1e'
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