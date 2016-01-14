$packageName = 'ipnetinfo.portable'
$url = 'http://www.nirsoft.net/utils/ipnetinfo.zip'
$checksum = 'e404eeb4fda9ad91b8a54be50c1366fbf4ef8d32'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ipnetinfo.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null