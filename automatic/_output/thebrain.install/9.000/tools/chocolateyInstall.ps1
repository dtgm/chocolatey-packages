$packageName = 'thebrain.install'
$installerType = 'exe'
$silentArgs = '-q -overwrite'
$url = 'https://salesapi.thebrain.com/?a=doDirectDownload&id=70'
$checksum = 'f4f35883860da32c75fa5637729f142b14476cc775683875b0cae2c3c62dd924'
$checksumType = 'sha256'
$url64 = 'https://salesapi.thebrain.com/?a=doDirectDownload&id=76'
$checksum64 = '3c8c7f684f793cdb0cdd54765fb000b5d1c471d5680ef72c02f8c7d1e6c13791'
$checksumType64 = 'sha256'
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