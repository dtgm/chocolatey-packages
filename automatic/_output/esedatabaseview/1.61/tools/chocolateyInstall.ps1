$packageName = 'esedatabaseview'
$url = 'http://www.nirsoft.net/utils/esedatabaseview.zip'
$checksum = 'd3f3cda9739262d4f5885c7f1a76b0c4d26fdd2f5fdd699bae4550a152163e96'
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