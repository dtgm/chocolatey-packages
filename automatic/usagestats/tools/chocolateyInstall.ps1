$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)

Install-ChocolateyPackage -packageName "$packageName" -installerType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes $validExitCodes