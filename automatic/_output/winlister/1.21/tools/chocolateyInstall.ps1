$packageName = 'winlister'
$url = 'http://www.nirsoft.net/utils/winlister.zip'
$checksum = 'e2a19dc7876af4f95f188aeb5e89d0539e772789'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winlister-x64.zip'
$checksum64 = 'cf518d0883f60c9cbdc45956886228af8a2921ed'
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