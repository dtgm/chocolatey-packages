$packageName = 'networktrafficview'
$url = 'http://www.nirsoft.net/utils/networktrafficview.zip'
$checksum = 'b285ae73ae10c2b6d94f930cd4829393f11980285f5dad24b8f0f0a1ef54d5f8'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/networktrafficview-x64.zip'
$checksum64 = 'cfb24ae445954bd709a94d25c4511e42c813a683ee0a958cb9674c2122dea2e7'
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