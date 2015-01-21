$packageName = 'pan'
$installerType = 'msi'	
$silentArgs = '/quiet /qn /norestart'
$url = 'https://drive.google.com/uc?export=download&id=0Bxjl408XUVptblVGTnFjZHBac0k'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes