$packageName = 'orwelldevcpp'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/orwelldevcpp/files/Setup%20Releases/Dev-Cpp%205.11%20TDM-GCC%204.9.2%20Setup.exe/download'
$checksum = '599853e3331311f9ef81b1e633d7713dd258f81d'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"