$packageName = 'wakemeonlan'
$url = 'http://www.nirsoft.net/utils/wakemeonlan.zip'
$checksum = '8ebb8dad69d53d29064f229f7ddb3ef0c94bc706edc1efbb49fc8163419f1f63'
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