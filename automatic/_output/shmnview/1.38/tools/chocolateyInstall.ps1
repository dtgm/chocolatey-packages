$packageName = 'shmnview'
$url = 'http://www.nirsoft.net/utils/shmnview.zip'
$checksum = '23987fff665b0792f95999f0254aaa83cb4df300e169f7545720352414d05af9'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/shmnview-x64.zip'
$checksum64 = '8826bfdf2fb30a0b92d267a19bf4afd2f04bf52107955ad65703fac14ad772d3'
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