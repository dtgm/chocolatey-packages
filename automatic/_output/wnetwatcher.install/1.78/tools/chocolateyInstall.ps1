$packageName = 'wnetwatcher.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wnetwatcher_setup.exe'
$checksum = '74cc3f96ae8a7d720830bc5ca08cf687bf17c9af'
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