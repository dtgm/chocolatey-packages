$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = 'ccb96b26d63c7961e6dcce24ca35d6d3d330fbceacb88c1b9667cbc5ff8ea634'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = 'f6870aa211c9eeb2cacce17137dff20965632463ff95a20e3061897aa3ab5eaf'
$checksumType64 = 'sha256'
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