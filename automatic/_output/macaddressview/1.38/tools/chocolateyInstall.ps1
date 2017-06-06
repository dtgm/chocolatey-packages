$packageName = 'macaddressview'
$url = 'http://www.nirsoft.net/utils/macaddressview.zip'
$checksum = '18f70c51a5a60e071262c570b67c4fb4eca00fa19b4c27d45dbadf61b04378ae'
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