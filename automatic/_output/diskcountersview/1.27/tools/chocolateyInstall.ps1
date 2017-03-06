$packageName = 'diskcountersview'
$url = 'http://www.nirsoft.net/utils/diskcountersview.zip'
$checksum = '3b56062d89de1dc141ea873fd407aed0988d8b11d6d1e45e344d38aa971419dc'
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