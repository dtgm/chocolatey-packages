$packageName = 'wirelessnetview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wirelessnetview_setup.exe'
$checksum = '1fef45cefae6d9a21cc4ec73c23de8464291f41e'
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