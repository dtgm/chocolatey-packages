try {
	$packageName = 'mediainfo'
	$installerType = 'exe'
	# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$url = 'http://sourceforge.net/projects/mediainfo/files/binary/mediainfo-gui/0.7.71/MediaInfo_GUI_0.7.71_Windows.exe/download'
	$silentArgs = '/S'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}