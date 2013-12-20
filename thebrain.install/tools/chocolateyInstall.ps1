$packageName = 'thebrain'
$installerType = 'EXE'
$url  = 'http://assets.thebrain.com/downloads/TheBrain_windows_8_0_0_6.exe'
$url64 = 'http://assets.thebrain.com/downloads/TheBrain_windows-x64_8_0_0_6.exe'
$silentArgs = '-q -overwrite'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"