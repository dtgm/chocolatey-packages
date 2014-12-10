try {
	$packageName = '{{PackageName}}'
	$packageVersion = '{{PackageVersion}}'
  $unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$installFolder = "$packageName-$packageVersion-win"
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$url = {{DownloadUrl}}
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