$packageName = 'thebrain.install'
$installerType = 'EXE'
$url  = 'http://assets.thebrain.com/downloads/TheBrain_windows_8_0_0_7.exe'
$url64 = 'http://assets.thebrain.com/downloads/TheBrain_windows-x64_8.0.0.7.exe'
$silentArgs = '-q -overwrite'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"