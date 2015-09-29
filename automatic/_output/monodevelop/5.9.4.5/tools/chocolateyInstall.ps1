$packageName = 'monodevelop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://download.xamarin.com/studio/Windows/XamarinStudio-5.9.4.5-0.msi'
$checksum = '7cb6e84fff09e2fd970cf78b00b6bdbf9eb50044'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"