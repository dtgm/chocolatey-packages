$packageName = 'colorconsole.install'
$url = 'http://www.softwareok.com//Download/ColorConsole.zip'
$checksum = 'c4be354835499bd0e1300638f3a3f977f5197288'
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