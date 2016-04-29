$packageName = 'ipnetinfo.portable'
$url = 'http://www.nirsoft.net/utils/ipnetinfo.zip'
$checksum = '8baca698a0579bbd5cde1318e91083a04fd186a6'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ipnetinfo.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null