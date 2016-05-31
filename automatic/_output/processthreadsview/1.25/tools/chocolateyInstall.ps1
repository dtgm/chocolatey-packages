$packageName = 'processthreadsview'
$url = 'http://www.nirsoft.net/utils/processthreadsview.zip'
$checksum = '04e54eb295dd04fe16abea7e6ee949ae8107725477669a50a006de6921f3063f'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/processthreadsview-x64.zip'
$checksum64 = '81223d5d48efb201aa704b4847b61669241a9518880d2727396b67c1a3e9b7e1'
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