$packageName = 'whoistd.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/whoistd_setup.exe'
$checksum = '6e0ac6cb7a4eb0adc8f07ca7f48b20bb3ee8ce1632785f4c9a0c231dcf4d9db5'
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