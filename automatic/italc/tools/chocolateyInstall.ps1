$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes "$validExitCodes"