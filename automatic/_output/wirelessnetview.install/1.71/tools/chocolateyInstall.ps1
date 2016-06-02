$packageName = 'wirelessnetview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wirelessnetview_setup.exe'
$checksum = 'ebbe7944f1feb5dffa13823df0f4e734f02aafd3513844f9f9d475d2c84a89e1'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"