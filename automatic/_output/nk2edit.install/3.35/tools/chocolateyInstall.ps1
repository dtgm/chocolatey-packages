$packageName = 'nk2edit.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/nk2edit_setup.exe'
$checksum = '892cb7eef457e35662380e6c045a7771c0a9218b7443e7df6be0006bedaf336c'
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