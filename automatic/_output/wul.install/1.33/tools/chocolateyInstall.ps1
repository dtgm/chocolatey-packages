$packageName = 'wul.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wul_setup.exe'
$checksum = '34bacb272969241688ea916739df5daf46c85d732f7ec8d2925aa8792a032632'
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