$packageName = 'svgcleaner'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/svgcleaner/files/v0.6.2/SVGCleanerSetup_0.6.2.exe'
$checksum = '1373ff21e940a287c60ed24babc260e444388aeb'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"