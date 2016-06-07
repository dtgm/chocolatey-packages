$packageName = 'winauth'
$url = 'https://winauth.com/downloads/3.x/WinAuth-3.5.1.zip'
$checksum = 'bec21c9b8c94fdf9977eed526e730d11a89d25472f90cd87ee47dcfeddbe237d'
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