$packageName = 'zimbra-desktop'
$installerType = 'msi'
$installArgs = '/quiet /qn /norestart'
$url = 'https://files2.zimbra.com/downloads/zdesktop/7.2.5/b12038/zdesktop_7_2_5_ga_b12038_20140417012326_win32.msi'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$installArgs" "$url" -validExitCodes $validExitCodes
