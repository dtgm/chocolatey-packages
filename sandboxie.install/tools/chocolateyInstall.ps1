$packageName = 'sandboxie.install'
$installerType = 'EXE'
$url  = 'http://www.sandboxie.com/SandboxieInstall.exe'
$silentArgs = '/install /S /D=C:\Program Files\Sandboxie'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"