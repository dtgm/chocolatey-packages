$packageName = 'browsinghistoryview'
$url = 'http://www.nirsoft.net/utils/browsinghistoryview.zip'
$checksum = '89110b77f0af96cd2d7d979f537512d4b9c0338417bb308b6543106f19be22b1'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
$checksum64 = 'a3d1ad61686c6dcc081d138872468a8d74793255d9cf964c318bc19a06a88652'
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