$packageName = 'wincrashreport'
$url = 'http://www.nirsoft.net/utils/wincrashreport.zip'
$checksum = '421feacd02458ea9857e6644ab1fdbc268f66243'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/wincrashreport-x64.zip'
$checksum64 = '6bacb23eac5f1df76543655868fd55f9f5e982f5'
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