$packageName = 'dumpedid'
$url = 'http://www.nirsoft.net/utils/dumpedid.zip'
$checksum = 'e3defbfe866f0d28009864d2c059f48e1c903cfee022fe8ba27d753fd02e5219'
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