$packageName = 'browsinghistoryview'
$url = 'http://www.nirsoft.net/utils/browsinghistoryview.zip'
$checksum = '712030a20cd86e40e620461b7ff2c627f6fa813f0a65e36888e52b2881188cd4'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
$checksum64 = 'bea232fcf3fabc9562347bf7edf2a9f4edb63a00a5fd1a9924224bd95973cd6a'
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