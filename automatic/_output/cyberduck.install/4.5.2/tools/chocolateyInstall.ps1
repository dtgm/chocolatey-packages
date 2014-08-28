$packageName = 'cyberduck.install'
$installerType = 'EXE'
$url  = '{preupdate-url}'
$silentArgs = '/S'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
