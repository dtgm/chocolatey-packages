$packageName = 'joinwav'
$url = 'http://www.pc-tools.net/files/win32/freeware/joinwav-1.0.zip'
$checksum = 'eb0ca309975e8213eebc234c6dac65cb01ef7899'
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