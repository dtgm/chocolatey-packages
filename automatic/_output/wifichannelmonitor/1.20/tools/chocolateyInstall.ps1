$packageName = 'wifichannelmonitor'
$url = 'http://www.nirsoft.net/utils/wifichannelmonitor.zip'
$checksum = 'bf19de82038b2d4e426575f7dc472b3b0680c7ec'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/wifichannelmonitor-x64.zip'
$checksum64 = '62dcde76e3dc44f311cb461006a7d0c91e0ea04e'
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