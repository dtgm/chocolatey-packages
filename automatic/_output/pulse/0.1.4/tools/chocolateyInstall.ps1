$packageName = 'pulse'
$packageVersion = '0.1.4'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://download.ind.ie/pulse/latest/pulse-windows-386-0.1.4.zip'
$url64 = 'http://download.ind.ie/pulse/latest/pulse-windows-amd64-0.1.4.zip'

Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc" "$url64"