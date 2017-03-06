$packageName = 'monodevelop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://download.xamarin.com/studio/Windows/XamarinStudio-6.1.1.15-0.msi'
$checksum = '87c89fcd5afae614c41cf2d79e21cb6d6e2ea51c917705100c83dafa54bd005a'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"