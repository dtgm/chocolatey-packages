$packageName = 'nunit.install'
$installerType = 'MSI'
$url = 'http://launchpad.net/nunitv2/trunk/2.6.3/+download/NUnit-2.6.3.msi'
$silentArgs = '/passive'
$validExitCodes = @(0) 
Install-ChocolateyPackage $packageName $installerType "$silentArgs" "$url" -validExitCodes $validExitCodes