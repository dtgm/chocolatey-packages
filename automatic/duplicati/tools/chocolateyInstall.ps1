$packageName = '{{PackageName}}'
$installerType = 'msi'
$url  = '{{DownloadUrl}}'
#$url  = 'http://duplicati.googlecode.com/files/Duplicati%201.3.4.msi'
$url64  = '{{DownloadUrlx64}}'
#$url64  = 'http://duplicati.googlecode.com/files/Duplicati%201.3.4.x64.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0) 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes