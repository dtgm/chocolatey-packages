$packageName = 'ofview.portable'
$url = 'http://www.nirsoft.net/utils/ofview.zip'
$checksum = '4b73ac080d3b6285ff4fc442af3f20afc2486a172cc4d6d4f406e49a187cb399'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/ofview-x64.zip'
$checksum64 = '4243d4c87a1983d7cc9dd55cb999a30d6674bc5f40946d0f87db352c58cb736b'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ofview.exe"

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