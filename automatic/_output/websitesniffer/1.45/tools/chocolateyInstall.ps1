$packageName = 'websitesniffer'
$url = 'http://www.nirsoft.net/utils/websitesniffer.zip'
$checksum = '016e73e8ec7ae07d713cab9e2782ff9334d07cad'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/websitesniffer-x64.zip'
$checksum64 = '35af2a9855c9ab5acbee4ba350fd6e464529cd87'
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