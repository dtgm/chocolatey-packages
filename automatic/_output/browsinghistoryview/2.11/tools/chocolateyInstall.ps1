$packageName = 'browsinghistoryview'
$url = 'http://www.nirsoft.net/utils/browsinghistoryview.zip'
$checksum = '1e36113d2a13ac2d7abf230a213ab523b552e5489e1e15cf80099d6caaf259bf'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
$checksum64 = '5649be847fabf4ce307b1f90c4c4b1c7ea1f396ca596a6a1ee372277af0424fa'
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