$packageName = 'shmnview'
$url = 'http://www.nirsoft.net/utils/shmnview.zip'
$checksum = '77a722e2855d5871d4dbd01521ade870c45ed7c24ebdc08836a3dbe7ad8e63fc'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/shmnview-x64.zip'
$checksum64 = '6cf58040b4ddca9b1497703c5cafbffa70aefc5efb39a5004801243784906826'
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