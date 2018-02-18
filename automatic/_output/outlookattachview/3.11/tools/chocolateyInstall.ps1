$packageName = 'outlookattachview'
$url = 'http://www.nirsoft.net/utils/outlookattachview.zip'
$checksum = '575db0e957283bd2c693d6c94e2e771d11fc201f98cb16ea5933f012e9d7600f'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookattachview-x64.zip'
$checksum64 = 'aae980b9f2f60267563751b97ef15e3f800601eda31f39dc715946d35a2b299d'
$checksumType64 = 'sha256'
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