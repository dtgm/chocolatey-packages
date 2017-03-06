$packageName = 'httpnetworksniffer'
$url = 'http://www.nirsoft.net/utils/httpnetworksniffer.zip'
$checksum = '84bd936931a94e9627faf4430e27b316cc7621ba82f3edec3c77b4eba2e5f930'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/httpnetworksniffer-x64.zip'
$checksum64 = 'c2b3d073e10b8495e0a361127cc25afec3bbe10a43982ec99b27917314e724a8'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null