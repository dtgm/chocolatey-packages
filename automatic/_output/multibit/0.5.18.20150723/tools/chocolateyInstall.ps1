$packageName = 'multibit'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://multibit.org/releases/multibit-classic/multibit-0.5.18//multibit-0.5.18-windows-setup.exe'
$checksum = 'd57ddc556ae969829fff73f7d7f1464adeb14909'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"