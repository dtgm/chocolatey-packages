$packageName = 'colorconsole.install'
$url = 'http://www.softwareok.com//Download/ColorConsole.zip'
$checksum = '4eb783e79533fb182543457f3e5951d9c6216df52a8fdb4323da54ac59b0e864'
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
            