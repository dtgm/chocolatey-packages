$packageName = 'passwordscan.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/passwordscan_setup.exe'
$checksum = '6e9741a86bcd28d2b8488e6febf9470a1f2eec2f'
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