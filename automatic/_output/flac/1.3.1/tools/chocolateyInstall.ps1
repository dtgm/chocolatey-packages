try {
	$packageName = 'flac'
	$packageVersion = '1.3.1'
  $unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFolder = "$packageName-$packageVersion-win"
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$url = http://tcpdiag.dl.sourceforge.net/project/flac/flac-win/flac-1.3.1-win/flac-1.3.1-win.zip
  Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLoc"
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		Remove-Item -Recurse (Join-Path "$unzipLoc" (Join-Path "$installFolder" 'bin32'))
	} else {
		Remove-Item -Recurse (Join-Path "$unzipLoc" (Join-Path "$installFolder" 'bin64'))
	}
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}