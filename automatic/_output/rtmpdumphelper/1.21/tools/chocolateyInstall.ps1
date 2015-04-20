$packageName = 'rtmpdumphelper'
$url = 'http://www.nirsoft.net/utils/rtmpdumphelper.zip'
$checksum = '5a4564ff6cbfef18874523804e457b6640593b2f'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/rtmpdumphelper-x64.zip'
$checksum64 = 'ee6a9e9d1b7341f00c4355fc92bdf0468589ed4c'
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