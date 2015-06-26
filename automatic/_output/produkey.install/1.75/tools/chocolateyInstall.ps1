$packageName = 'produkey.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/produkey_setup.exe'
$checksum = '2f6e400576f472ae0487bfbe04ed566d05cc52a5'
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