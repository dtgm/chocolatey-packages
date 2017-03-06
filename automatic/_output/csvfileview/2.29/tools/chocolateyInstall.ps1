$packageName = 'csvfileview'
$url = 'http://www.nirsoft.net/utils/csvfileview.zip'
$checksum = 'f5a1fbd92fbaa1b837a862839c43797bb028f7d265c7399703ccaf9318292c4c'
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