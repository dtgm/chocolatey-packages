$packageName = 'ofview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ofview_setup.exe'
$checksum = '706e59b1a2dab3506a3b1e779ea0f73ad2a4c04a325de6211e3af2afdcad85a3'
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