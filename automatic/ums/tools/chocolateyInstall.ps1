$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
# hack to workaround limitation with chocopkgup/ketarin
$url = '{{DownloadUrlx64}}'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes