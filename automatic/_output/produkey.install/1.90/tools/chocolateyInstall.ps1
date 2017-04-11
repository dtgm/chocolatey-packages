$packageName = 'produkey.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/produkey_setup.exe'
$checksum = '63c3ef39a3bf12e45385a6070102240e8ef81f528f677b017056e8f51f5fdb2c'
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