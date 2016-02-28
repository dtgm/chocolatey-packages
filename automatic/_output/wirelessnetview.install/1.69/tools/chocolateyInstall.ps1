$packageName = 'wirelessnetview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wirelessnetview_setup.exe'
$checksum = '3eed19c08318e48eba68ea74a196269e2aa20dcc'
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