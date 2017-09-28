$packageName = 'mylastsearch'
$url = 'http://www.nirsoft.net/utils/mylastsearch.zip'
$checksum = '1c9ac237f092c9a9c420993b39e1ec57af88be13b9bffe87d6c6fac82b3277e1'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null