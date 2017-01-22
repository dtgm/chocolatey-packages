$packageName = 'tcplogview'
$url = 'http://www.nirsoft.net/utils/tcplogview.zip'
$checksum = '27c938fc6eb6517e3ab3ffd87f6c14945e2e51df798e0c96bfcc35ec7f90b0d9'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/tcplogview-x64.zip'
$checksum64 = '6689eb7e0fbb9388f6f8ce31ca4c83d102d4e549d97e4df0e11aed9576cf04da'
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