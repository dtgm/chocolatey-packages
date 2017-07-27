$packageName = 'serviwin.portable'
$url = 'http://www.nirsoft.net/utils/serviwin.zip'
$checksum = '32b308a8b92fe63db915804126893220c3b420dd902bf4f1a85c1d7588e69cfc'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "serviwin.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null