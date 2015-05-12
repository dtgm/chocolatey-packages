$packageName = 'outlookstatview'
$url = 'http://www.nirsoft.net/utils/outlookstatview.zip'
$checksum = 'd9e2183a9e08a9136ae408242f9d5a5da12247c6'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookstatview-x64.zip'
$checksum64 = '9d9c8e9965d1dbe43925dba168c01b8656d5aa80'
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