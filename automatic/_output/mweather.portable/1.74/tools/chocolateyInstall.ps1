$packageName = 'mweather.portable'
$url = 'http://www.nirsoft.net/utils/mweather.zip'
$checksum = 'cb0e996e35c36b016539303b964e1023ff6708883fde49a74c8f06bc9e32dab9'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "mweather.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null