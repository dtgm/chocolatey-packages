try {
	$packageName = 'audacious'
	$packageVersion = '3.5.2'
  $unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFolder = "$packageName-$packageVersion-win"
	$url = 'http://distfiles.audacious-media-player.org/audacious-3.5.2-win32.zip'
  Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}