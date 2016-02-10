$packageName = 'nk2edit.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/nk2edit_setup.exe'
$checksum = 'dab27c8abb2e01580f39ee259c091b85af9f3eba'
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