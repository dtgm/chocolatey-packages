$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$silentArgs = '/S'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
