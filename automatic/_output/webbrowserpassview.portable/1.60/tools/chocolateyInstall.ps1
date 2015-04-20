$packageName = 'webbrowserpassview.portable'
$url = 'http://www.nirsoft.net/toolsdownload/webbrowserpassview.zip'
$checksum = '69181cc4666cd62a0103e0d93d63231d035c5a0c'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null