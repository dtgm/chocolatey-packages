$packageName = 'gtksharp'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://download.xamarin.com/GTKforWindows/Windows/gtk-sharp-2.12.26.msi'
$checksum = 'afd6837d780746c022e270cd9303c1527ddefbd7'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"