$packageName = 'sysexp.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/sysexp_setup.exe'
$checksum = '9e941658169ebfb62d3ddb506637a44adb18a799'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"