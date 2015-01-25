$packageName = '{{PackageName}}'
$installerType = 'msi'
$installArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$installArgs" "$url" -validExitCodes $validExitCodes
