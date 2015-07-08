$packageName = 'sylpheed.portable'
$url = 'http://jaist.dl.sourceforge.jp/sylpheed/61368/sylpheed-3.4.2-win32.zip'
$url64 = $url
try {
if ( test-path "$env:ProgramFiles(x86)" ) {
mkdir "$env:programfiles(x86)\Sylpheed"
$destdir = "$env:programfiles(x86)\Sylpheed"
}
else {
mkdir "$env:programfiles\Sylpheed"
$destdir = "$env:programfiles\Sylpheed"
$startmenu = "$env:appdata\Microsoft\Windows\Start Menu\programs"
}
} catch {
Write-ChocolateyFailure $packageName $($_.Exception.Message)
throw 
}
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$startmenu\Sylpheed.lnk")
$Shortcut.TargetPath = "$destdir\Sylpheed-3.4.2\sylpheed.exe"
$Shortcut.Save()
Install-ChocolateyZipPackage "$packageName" "$url" "$destdir" "$url64"