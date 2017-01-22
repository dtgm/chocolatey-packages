$packageName = 'lastactivityview'
$url = 'http://www.nirsoft.net/utils/lastactivityview.zip'
$checksum = 'cc4cf41cbc21b631fbb61671186b5302ff20391438940f310402b8c5d0bed326'
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