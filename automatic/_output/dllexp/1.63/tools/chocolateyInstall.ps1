$packageName = 'dllexp'
$url = 'http://www.nirsoft.net/utils/dllexp.zip'
$checksum = '56f0f00931404bbfd5f80eaa1161f2d015824e88'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/dllexp-x64.zip'
$checksum64 = 'a068b817bc7881f030d377f695d6d0688d228e5f'
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