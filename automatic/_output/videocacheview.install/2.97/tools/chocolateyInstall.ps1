$packageName = 'videocacheview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/videocacheview_setup.exe'
$checksum = 'a6bcbd8903abe966baef31f841ae6e8ab018d6342f70dbae9a0a5da2484515c7'
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