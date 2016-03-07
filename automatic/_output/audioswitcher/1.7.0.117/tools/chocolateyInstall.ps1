$packageName = 'audioswitcher'
$url = 'https://github.com/xenolightning/AudioSwitcher_v1/releases/download/1.7.0.117/AudioSwitcher.zip'
$checksum = '9b7261296ee0fafdbd3e38d23f1edf30'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"


Set-Content -Path ("$installFile.gui") `
            -Value $null