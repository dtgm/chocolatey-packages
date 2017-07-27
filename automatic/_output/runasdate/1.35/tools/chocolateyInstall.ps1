$packageName = 'runasdate'
$url = 'http://www.nirsoft.net/utils/runasdate.zip'
$checksum = '3dc717373ac45c904b5b83e516a2468ce0360875203eaa3ac6be4971aa3f26cd'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/runasdate-x64.zip'
$checksum64 = '74679205e55384e3178924c5512bd47467a086ca55f677dba592398e71820ffe'
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