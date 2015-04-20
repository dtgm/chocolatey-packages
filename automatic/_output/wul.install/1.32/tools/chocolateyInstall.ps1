$packageName = 'wul.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wul_setup.exe'
$checksum = '599e0ff41f08febd49231db962980816f5588547'
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