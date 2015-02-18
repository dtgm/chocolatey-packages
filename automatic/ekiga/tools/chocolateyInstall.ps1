$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes