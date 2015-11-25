$packageName = 'nk2edit.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/nk2edit_setup.exe'
$checksum = '8483066063695a5385b932933ccad9e5a8aa728f'
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