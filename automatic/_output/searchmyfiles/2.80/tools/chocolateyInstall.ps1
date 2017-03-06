$packageName = 'searchmyfiles'
$url = 'http://www.nirsoft.net/utils/searchmyfiles.zip'
$checksum = '9a90f76fc4c9ec41219d7c4c2a9b3102d2f58575a1981909c4a31122bb197a0a'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/searchmyfiles-x64.zip'
$checksum64 = 'e76efdf8bd51409ae819f5fe05307fb6e0bfeb3eca02e90195af0dafc50fd714'
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