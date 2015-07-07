$packageName = 'shexview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/shexview_setup.exe'
$checksum = 'be3a108c252021fbaf3ebcd9c344cb858a710ce9'
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