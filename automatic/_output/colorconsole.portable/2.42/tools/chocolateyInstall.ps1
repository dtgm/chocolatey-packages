$packageName = 'colorconsole.portable'
$url = 'http://www.softwareok.com//Download/ColorConsole_Portable.zip'
$checksum = 'd6eb152a9fcf89c8a54b3e427532ca389624ab3e'
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