$packageName = 'monodevelop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://download.xamarin.com/studio/Windows/XamarinStudio-5.9.6.23-0.msi'
$checksum = 'b71a2909fa6820d375c446ef06d1b019ee79d13c'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"