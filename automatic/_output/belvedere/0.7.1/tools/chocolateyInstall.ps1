$packageName = 'belvedere'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://edge-cache.lifehacker.com/lifehacker/install-Belvedere-0.7.1.exe'
$checksum = 'fec232cbd8afd3695984e0f4f65c75e2aa791733'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"