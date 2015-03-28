$packageName = 'trafficwatcher'
$url = 'http://sourceforge.net/projects/trafficwatcher/files/trafficwatch-2.0.1.zip/download'
$checksum = 'c13fd3e1aed147a782678b27711f1601fdc186d5'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `

Set-Content -Path ("$installFile.gui") -Value $null