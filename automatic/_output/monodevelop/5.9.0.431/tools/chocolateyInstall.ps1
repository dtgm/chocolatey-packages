$packageName = 'monodevelop'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://download.xamarin.com/studio/Windows/XamarinStudio-5.9.0.431-0.msi'
$checksum = 'b67a7452722f3bd972614970a11e362554df47b6'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"