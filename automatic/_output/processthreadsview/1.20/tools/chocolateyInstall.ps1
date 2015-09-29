$packageName = 'processthreadsview'
$url = 'http://www.nirsoft.net/utils/processthreadsview.zip'
$checksum = '6089c14800fbcd6aef9e4dae4daab6b8ab7959b9'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/processthreadsview-x64.zip'
$checksum64 = '72260752b44ec31d6824338d3c25d50b1a55b232'
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