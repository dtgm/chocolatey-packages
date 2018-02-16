$packageName = 'colorconsole.portable'
$url = 'http://www.softwareok.com//Download/ColorConsole_Portable.zip'
$checksum = '5f4fa37f9f874df88ad8d2b1e9f00fbf1d7e9bdca7a1e8d7264bcf847fbb881c'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ColorConsole.exe"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
Set-Content -Path ("$installFile.gui") `
            -Value $null