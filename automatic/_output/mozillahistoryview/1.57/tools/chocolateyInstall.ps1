$packageName = 'mozillahistoryview'
$url = 'http://www.nirsoft.net/utils/mozillahistoryview.zip'
$checksum = '060ea13b33f1d3bb31782b6a25c983d9f2567dedb19d38f2daa887f89f096244'
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