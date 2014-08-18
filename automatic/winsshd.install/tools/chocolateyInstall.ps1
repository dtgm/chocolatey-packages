$packageName = 'Bitvise SSH Server'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$silentArgs = '-acceptEULA -startServer -startBssCtrl'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"