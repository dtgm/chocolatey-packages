$packageName = 'gdiview'
$url = 'http://www.nirsoft.net/utils/gdiview.zip'
$checksum = '26b1c14d0e70ddec39800279021eef24b1d99564'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/gdiview-x64.zip'
$checksum64 = 'e025459a67cca78b08dfce740b5eb4c070250863'
$checksumType64 = 'sha1'
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