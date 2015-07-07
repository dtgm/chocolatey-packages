$packageName = 'Gpg4win'
$installerType = 'EXE'
$url = 'http://files.gpg4win.org/gpg4win-2.2.3.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)
if (test-path "c:\Program Files (x86)\GNU\GnuPG") {
	& 'c:\Program Files (x86)\GNU\GnuPG\gpg4win-uninstall.exe' /S
}
if (test-path "c:\Program Files\GNU\GnuPG"){
	& 'c:\Program Files\GNU\GnuPG\gpg4win-uninstall.exe' /S
}
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
