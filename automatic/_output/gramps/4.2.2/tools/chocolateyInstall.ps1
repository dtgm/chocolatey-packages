$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = 
$url = $urlArray[0]
$checksum = '7fa654db965a5ce41eae0fcb4634c01326966626'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '9e6effd4b702350955c2ecc936b0f107833d8600'
$checksumType64 = 'sha1'
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