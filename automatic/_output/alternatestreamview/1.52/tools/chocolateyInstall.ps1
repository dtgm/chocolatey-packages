$packageName = 'alternatestreamview'
$url = 'http://www.nirsoft.net/utils/alternatestreamview.zip'
$checksum = 'b8ed8b6d802c1129436c6a8aba8b583aed23565f67f79ac4b3da3b46b26419fe'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/alternatestreamview-x64.zip'
$checksum64 = 'a031600ab0b06b875baebd3315d88a1bb48d6c249b3bc130dd94370f3eb3937a'
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