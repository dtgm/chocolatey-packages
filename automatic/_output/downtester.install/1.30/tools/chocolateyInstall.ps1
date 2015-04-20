$packageName = 'downtester.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/downtester_setup.exe'
$checksum = '87d1e512bb685a90d87c16261b801fbbc187a0bf'
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