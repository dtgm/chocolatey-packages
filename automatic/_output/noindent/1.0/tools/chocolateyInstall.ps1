$packageName = 'noindent'
$url = 'http://www.pc-tools.net/files/win32/freeware/noindt10.zip'
$checksum = '326e58ad034384270c54541838503f6b4c7790fe'
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