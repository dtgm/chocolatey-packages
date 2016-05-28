$packageName = 'winauth'
$url = 'https://winauth.com/downloads/3.x/WinAuth-3.5.0.zip'
$checksum = 'a902febebad1f61660fea3d3d6512548ec7511efddc11de3f92acb3ef6e58cb7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "WinAuth.exe"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
Set-Content -Path ("$installFile.gui") `
            -Value $null