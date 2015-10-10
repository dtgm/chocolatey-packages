$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = '47fb9220220701b03b153f90413a659c5e0bf2de'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = '32faa94653d20c3b767330d0e505e3e03694647d'
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