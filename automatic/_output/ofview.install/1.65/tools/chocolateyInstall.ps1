$packageName = 'ofview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ofview_setup.exe'
$checksum = '38241635b88af4382573ad1bef6b216bec63424c'
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