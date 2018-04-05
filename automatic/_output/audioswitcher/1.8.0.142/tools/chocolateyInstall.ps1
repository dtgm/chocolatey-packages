$packageName = 'audioswitcher'
$url = 'https://github.com/xenolightning/AudioSwitcher_v1/releases/download/1.8.0.142/AudioSwitcher.zip'
$checksum = '6052e39b343b6cf78881f84f1cbdd54c'
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