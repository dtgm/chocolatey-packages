$packageName = 'gtksharp'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://download.xamarin.com/GTKforWindows/Windows/gtk-sharp-2.12.30.msi'
$checksum = 'b28895e0a338ab0430f4eb330240071b750d7081'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"