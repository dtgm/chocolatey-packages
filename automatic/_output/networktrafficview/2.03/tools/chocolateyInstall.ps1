$packageName = 'networktrafficview'
$url = ''
$checksum = 'f3e840ba30b41fe3210be11f02ccd061bb7ca0064468a7d04fbf9aa1121add0b'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/networktrafficview-x64.zip'
$checksum64 = 'f42d0c1eac5707fbf78aefe49b2998d64fe8dbe3ac62b8f1b6262477b78d636a'
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