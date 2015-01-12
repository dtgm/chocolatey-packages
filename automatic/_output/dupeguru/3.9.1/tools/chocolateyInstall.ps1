$packageName = 'dupeguru'
$installerType = 'msi'	
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/dupeguru_win64_3.9.1.msi'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes