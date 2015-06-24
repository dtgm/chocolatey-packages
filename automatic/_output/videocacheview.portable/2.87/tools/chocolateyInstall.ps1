$packageName = 'videocacheview.portable'
$url = 'http://www.nirsoft.net/utils/videocacheview.zip'
$checksum = 'b4f296764f9b7d59fc3f575a7b5573cdb7ef9707'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/videocacheview-x64.zip'
$checksum64 = '518a167900cca2057f94053f8ef24ca6a11b26dc'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "videocacheview.exe"

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