$packageName = 'colorconsole.install'
$url = 'http://www.softwareok.com//Download/ColorConsole.zip'
$checksum = 'b9d53872963c01374b0518db3cbc1468896181e6'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ColorConsole.exe"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
Set-Content -Path ("$installFile.gui") `
            -Value $null