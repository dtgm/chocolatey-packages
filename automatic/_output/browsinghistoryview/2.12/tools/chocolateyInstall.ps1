$packageName = 'browsinghistoryview'
$url = 'http://www.nirsoft.net/utils/browsinghistoryview.zip'
$checksum = 'dd46d5af61ed11e4229861bbb0af5a40dc24611f2a1b351046250d8591cc8c81'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
$checksum64 = '49c87435be291299238ab576b2aabcd7e4267e7b306a0feac81575e52ebd57da'
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