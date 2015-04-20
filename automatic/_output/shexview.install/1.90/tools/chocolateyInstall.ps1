$packageName = 'shexview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/shexview_setup.exe'
$checksum = '4ba1b077bbe223f73372c63ed1179ccd3d24b76f'
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