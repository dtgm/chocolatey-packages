$packageName = 'shman'
$url = 'http://www.nirsoft.net/utils/shman.zip'
$checksum = 'ae59efdb97736d17f08720cf79dd94e3e92a5479'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shman-x64.zip'
$checksum64 = '6a411f52a2d72a239e6bff62effe6fdc515e2b9a'
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