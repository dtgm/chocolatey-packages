$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '-q -overwrite'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"