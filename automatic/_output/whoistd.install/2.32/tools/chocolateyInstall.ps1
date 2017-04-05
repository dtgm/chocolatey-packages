$packageName = 'whoistd.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/whoistd_setup.exe'
$checksum = 'adbf1ed91cae0509d53383c5d494eb0eab0c426effc7e25630a6481c69899f45'
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