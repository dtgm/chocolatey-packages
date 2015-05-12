$packageName = 'wifichannelmonitor'
$url = 'http://www.nirsoft.net/utils/wifichannelmonitor.zip'
$checksum = '36a2f0ce10f364dd0a6d3326e0aa065d812bd0c2'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/wifichannelmonitor-x64.zip'
$checksum64 = '751d67915cde299bea8e0e7363113bb5653199f1'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null