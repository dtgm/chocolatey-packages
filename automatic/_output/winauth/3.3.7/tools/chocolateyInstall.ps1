$packageName = 'winauth'
$url = 'https://winauth.com//downloads/3.x/WinAuth-3.3.7.zip'
$checksum = 'b909e9d3f3a9b1d5bfd73ed54545e494c5550760'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "WinAuth.exe"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
Set-Content -Path ("$installFile.gui") `
            -Value $null