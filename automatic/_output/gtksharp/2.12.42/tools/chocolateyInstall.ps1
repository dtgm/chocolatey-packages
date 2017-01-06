$packageName = 'gtksharp'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://dl.xamarin.com/GTKforWindows/Windows/gtk-sharp-2.12.42.msi'
$checksum = '929260e29d604a782030cfea52495cd9dcc6ebc31c32746cfbc681ffddbeea9f'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"