$packageName = 'pstpassword.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/pstpassword_setup.exe'
$checksum = 'd94ce02ed02bce5442d11b220fe3713a71ca351f'
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