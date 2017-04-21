$packageName = 'gtksharp'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://dl.xamarin.com/GTKforWindows/Windows/gtk-sharp-2.12.44.msi'
$checksum = '1f7d358043a5aa56d805022d4efd0956c64e662f24b564b53e4e9d3849248d3b'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"