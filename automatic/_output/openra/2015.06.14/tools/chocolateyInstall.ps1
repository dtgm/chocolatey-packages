$packageName = 'openra'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com//OpenRA/OpenRA/releases/download/release-20150614/OpenRA-release-20150614.exe'
$checksum = '9d3ac49b55e4a5a2e44d77783c5b5ca4'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"