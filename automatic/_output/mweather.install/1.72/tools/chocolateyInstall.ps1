$packageName = 'mweather.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/mweather_setup.exe'
$checksum = 'eda2dd2ed8d37b62ff79dd0d8f740bff699029cd'
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