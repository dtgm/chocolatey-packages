$packageName = 'thebrain'
$installerType = 'ZIP'
$url  = 'http://assets.thebrain.com/downloads/TheBrain_windows_8_0_0_6.zip'

Install-ChocolateyPackage "$packageName" "$installerType" "$url"