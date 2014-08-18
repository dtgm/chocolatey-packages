$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/install /S /D=C:\Program Files\Sandboxie'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"