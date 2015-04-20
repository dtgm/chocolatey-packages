$packageName = 'xcode'
$url = 'http://www.pc-tools.net/files/win32/freeware/xc32-10.zip'
$checksum = 'c7b2f937e505c78c1c1150f8d6d54f066aed26f6'
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