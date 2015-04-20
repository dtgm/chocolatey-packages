$packageName = 'bluescreenview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/bluescreenview_setup.exe'
$checksum = '9731c8e834972df9fc88a89868974dc11c440cee'
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