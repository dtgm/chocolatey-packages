$packageName = 'netbeans'
$installerType = 'exe'
$url = 'http://download.netbeans.org/netbeans/8.0.2/final/bundles/netbeans-8.0.2-javase-windows.exe'
$silentArgs = '--silent'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes