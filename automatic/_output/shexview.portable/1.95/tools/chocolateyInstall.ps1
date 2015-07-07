$packageName = 'shexview.portable'
$url = 'http://www.nirsoft.net/utils/shexview.zip'
$checksum = 'e3a9739297c6aa18e182c137a83b3f75d72605f0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/shexview-x64.zip'
$checksum64 = 'ede12990210556093567bc73b8dfed75ec1efa10'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "shexview.exe"

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