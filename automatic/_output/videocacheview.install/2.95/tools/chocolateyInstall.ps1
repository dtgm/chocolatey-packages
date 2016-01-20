$packageName = 'videocacheview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/videocacheview_setup.exe'
$checksum = '131b2566afca524fabcd1757b94c6e345120faae'
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