$packageName = 'lastactivityview'
$url = 'http://www.nirsoft.net/utils/lastactivityview.zip'
$checksum = '1b8212cc61722eed130e75b8b48c3c7c766b09947eb2b6f6d9d84418723cbb43'
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