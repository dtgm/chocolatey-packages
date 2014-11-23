$packageName = 'thebrain.install'
$installerType = 'EXE'
$url  = 'http://api.thebrain.com/?a=doDirectDownload&id=70'
$url64 = 'http://api.thebrain.com/?a=doDirectDownload&id=76'
$silentArgs = '-q -overwrite'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"