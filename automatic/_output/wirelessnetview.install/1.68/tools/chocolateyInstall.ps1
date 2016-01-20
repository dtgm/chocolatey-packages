$packageName = 'wirelessnetview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wirelessnetview_setup.exe'
$checksum = '471f73a1734dd1c296ddda81e874cceef382d107'
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