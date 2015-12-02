$packageName = 'produkey.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/produkey_setup.exe'
$checksum = '32640e9f2edf46430d16cc36b5e1b0a3b16b05ec'
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