$packageName = 'regfileexport'
$url = 'http://www.nirsoft.net/utils/regfileexport.zip'
$checksum = '9e8474b7d0941328651590960bbf0d5f927b631d00a67df9eeaaae4cad2733ca'
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