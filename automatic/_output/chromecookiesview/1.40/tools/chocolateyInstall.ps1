$packageName = 'chromecookiesview'
$url = 'http://www.nirsoft.net/utils/chromecookiesview.zip'
$checksum = 'c46babb2a9de620e7da9f38d1711035db2783f5aeba7164a194c2383326d9a01'
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