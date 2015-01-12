$packageName = '{{PackageName}}'
$installerType = 'msi'	
$silentArgs = '/qn /norestart'
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes