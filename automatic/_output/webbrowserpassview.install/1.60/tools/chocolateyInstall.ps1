$packageName = 'webbrowserpassview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/webbrowserpassview_setup.exe'
$checksum = '2865169b8cea0ffa93dce5a2e809902b85990954'
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