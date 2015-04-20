$packageName = 'locate32'
$urlArray = @('http://sourceforge.net/projects/locate32/files/olderversions/locate32-3.1.11.7100.zip/download', 'http://sourceforge.net/projects/locate32/files/olderversions/locate32_x64-3.1.11.7100.zip/download')
$url = $urlArray[0]
$checksum = '1d459b5b053f348f5ae0256cb1fe706ada31d507'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '621ae929d57a239dca25e7178afd9f7fc9aa7d6a'
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
Set-Content -Path ("SetTool.exe.gui") `
            -Value $null