$packageName = 'thebrain.install'
$installerType = 'exe'
$url  = 'http://api.thebrain.com/?a=doDirectDownload&id=70'
$checksum = '9beacdf78523806d5a8960e0d6604505a1df7678'
$checksumType = 'sha1'
$url64 = 'http://api.thebrain.com/?a=doDirectDownload&id=76'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$silentArgs = '-q -overwrite'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"