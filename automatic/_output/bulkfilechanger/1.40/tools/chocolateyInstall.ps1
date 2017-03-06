$packageName = 'bulkfilechanger'
$url = 'http://www.nirsoft.net/utils/bulkfilechanger.zip'
$checksum = '5050d4174be28016b267520b14b4339d12b7ffee28b8e9486f8e778bb5a4b925'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
$checksum64 = '3e31335d69f0c416cd297eab8afd2a82501e640f900f625e6a750c9776096577'
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