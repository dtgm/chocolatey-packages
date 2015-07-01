$packageName = 'colorconsole.install'
$url = 'http://www.softwareok.com//Download/ColorConsole.zip'
$checksum = '0c3a7f784c032255d78289f046489db655943801'
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