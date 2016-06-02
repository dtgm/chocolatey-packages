$packageName = 'sysexp.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/sysexp_setup.exe'
$checksum = '5b03c79ed0f2b2813c6fefa457277fd229af94f0b99c129f03f4d5d8f7b8765e'
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