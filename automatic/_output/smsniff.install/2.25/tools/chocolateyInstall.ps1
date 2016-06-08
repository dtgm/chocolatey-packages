$packageName = 'smsniff.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/smsniff_setup.exe'
$checksum = 'a670e7c0225ed62836e00790651f8de80094aabc69f9bc4201e04cc89ccccc05'
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