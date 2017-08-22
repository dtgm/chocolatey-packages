$packageName = 'gtksharp'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://dl.xamarin.com/GTKforWindows/Windows/gtk-sharp-2.12.45.msi'
$checksum = 'c944a52ca16d4c10f4619d4d7c9a46b358ffa798fa35641fc05030e59983e03d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"