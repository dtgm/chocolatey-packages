$packageName = 'searchmyfiles'
$url = 'http://www.nirsoft.net/utils/searchmyfiles.zip'
$checksum = 'bc4689e6869558019173c2bed24053b9f9e370b70185e9690a7fe98ab187907c'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/searchmyfiles-x64.zip'
$checksum64 = '63b5bcb37798e214f5d03c46b110eab8d2182bf633c758817f79f74e03f13580'
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