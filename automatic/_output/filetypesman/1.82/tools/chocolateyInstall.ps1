$packageName = 'filetypesman'
$url = 'http://www.nirsoft.net/utils/filetypesman.zip'
$checksum = 'b9a563565ab8966534f5079051decbeaf217a6ef'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/filetypesman-x64.zip'
$checksum64 = '3b4e20124dba59b78dcf6d7e9cf59c01107227f8'
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