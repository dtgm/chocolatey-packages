$packageName = 'networkconnectlog'
$url = 'http://www.nirsoft.net/utils/networkconnectlog.zip'
$checksum = 'e2dd2d72d3f621cc1bb9f153730dfb4f51fd87d2'
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