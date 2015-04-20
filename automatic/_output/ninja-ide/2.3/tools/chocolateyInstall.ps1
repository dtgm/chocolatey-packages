$packageName = 'ninja-ide'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://dl.dropboxusercontent.com/u/19194639/ninja-ide-2.3.exe'
$checksum = 'c114ca7c9d9d64d409f8b01ba215adb240274bcf'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"