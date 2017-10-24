$packageName = 'appcrashview'
$url = 'http://www.nirsoft.net/utils/appcrashview.zip'
$checksum = '0a8de351e96f62edc4457ee10f6a1ccd2b0d0d978ed7ab36709045781def6fe7'
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