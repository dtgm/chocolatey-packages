$packageName = 'produkey.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/produkey_setup.exe'
$checksum = '477662559834f8490fc4b13e35c04c28de410c3da384f019b52b6b276e7801fb'
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