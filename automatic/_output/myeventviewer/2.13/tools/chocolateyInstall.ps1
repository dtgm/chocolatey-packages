$packageName = 'myeventviewer'
$url = 'http://www.nirsoft.net/utils/myeventviewer.zip'
$checksum = '5b5cb4d4595c729bbd5457194a775dc57076f635'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/myeventviewer-x64.zip'
$checksum64 = 'da71b208a24dc01de6381a983b26760a1c675554'
$checksumType64 = 'sha1'
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