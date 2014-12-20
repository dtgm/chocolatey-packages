$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"