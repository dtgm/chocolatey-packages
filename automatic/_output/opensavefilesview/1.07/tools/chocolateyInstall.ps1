$packageName = 'opensavefilesview'
$url = 'http://www.nirsoft.net/utils/opensavefilesview.zip'
$checksum = 'c30efbccbe1b574cf1fc3f123d33e99b73277dba'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/opensavefilesview-x64.zip'
$checksum64 = 'd8bf56877d349d9b8dd598964b5be7f5f0e71bc6'
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