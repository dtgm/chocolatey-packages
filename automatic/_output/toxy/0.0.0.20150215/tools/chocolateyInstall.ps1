$packageName = 'toxy'
$packageVersion = '0.0.0.20150215'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://jenkins.impy.me/job/Toxy x86/lastSuccessfulBuild/artifact/toxy_x86.zip'
$checksum = 'fdf74627226e4bbe3a7802cebd813cde7c61b001'
$checksumType = 'sha1'
$url64 = 'https://jenkins.impy.me/job/Toxy%20x64/lastSuccessfulBuild/artifact/toxy_x64.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
