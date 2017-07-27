$packageName = 'thebrain.portable'
$url = 'https://salesapi.thebrain.com/?a=doDirectDownload&id=73'
$checksum = 'f954d17846111ef337bc967b2d18ab4812d99c1991c6cd709bc4de94d3f3e3a1'
$checksumType = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$extractDir = Join-Path $toolsDir $packageName
$installFile = Join-Path $extractDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null