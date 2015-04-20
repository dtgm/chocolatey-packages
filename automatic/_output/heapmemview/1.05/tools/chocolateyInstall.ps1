$packageName = 'heapmemview'
$url = 'http://www.nirsoft.net/utils/heapmemview.zip'
$checksum = 'f2034efb1735823cc9752b62debf0bdc1f9973d1'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/heapmemview-x64.zip'
$checksum64 = '5b5149914aa1260028eb86437b58af928fa39e6f'
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