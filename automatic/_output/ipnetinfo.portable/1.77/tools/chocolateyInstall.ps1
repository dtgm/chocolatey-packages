$packageName = 'ipnetinfo.portable'
$url = 'http://www.nirsoft.net/utils/ipnetinfo.zip'
$checksum = 'd0d76baa11add6b89b590c45ce73f6f2422d3544df169150103b54d22898e9e0'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ipnetinfo.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null