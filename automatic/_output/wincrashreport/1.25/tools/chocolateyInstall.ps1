$packageName = 'wincrashreport'
$url = 'http://www.nirsoft.net/utils/wincrashreport.zip'
$checksum = '2d754c8d4041b01809638bf07e366a5fd018fee12d263b1323306f5166476e4e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/wincrashreport-x64.zip'
$checksum64 = '54d9495cc620de5eb96166763d7c5ee9d6106a9fd244ab7f5b478135c38c1028'
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