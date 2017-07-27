$packageName = 'turnedontimesview'
$url = 'http://www.nirsoft.net/utils/turnedontimesview.zip'
$checksum = '9853f8db91052b2dd3a68bb5afa7b14c2051c735f025179c079afb8bac223bbc'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null