$packageName = 'thebrain.install'
$installerType = 'EXE'
$url  = 'http://assets.thebrain.com/downloads/TheBrain_windows_8_0_1_2.exe'
$url64 = 'http://assets.thebrain.com/downloads/TheBrain_windows-x64_8.0.1.2.exe'
$silentArgs = '-q -overwrite'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"