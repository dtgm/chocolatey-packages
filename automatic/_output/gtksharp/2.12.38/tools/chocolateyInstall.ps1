$packageName = 'gtksharp'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://download.xamarin.com/GTKforWindows/Windows/gtk-sharp-2.12.38.msi'
$checksum = '862138a743a1be6e557f32c6c2bdc99c80225362a1e096686ca6fd30f2287d3d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"