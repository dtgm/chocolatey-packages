$packageName = 'videocacheview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/videocacheview_setup.exe'
$checksum = 'caa56e3eaacf1824ac1ad68c1764b24c027bae6f'
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