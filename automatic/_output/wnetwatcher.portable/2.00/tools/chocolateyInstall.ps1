$packageName = 'wnetwatcher.portable'
$url = 'http://www.nirsoft.net/utils/wnetwatcher.zip'
$checksum = '97d654ef5709f15c7ce5c1242627636fd8b1fc6a8e81bd71166471203f6d283f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "wnetwatcher.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null