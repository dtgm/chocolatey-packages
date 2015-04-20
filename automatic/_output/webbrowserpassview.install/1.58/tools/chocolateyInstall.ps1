$packageName = 'webbrowserpassview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/webbrowserpassview_setup.exe'
$checksum = 'd221500a69f530582106b1b470f76fbf92d0172d'
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