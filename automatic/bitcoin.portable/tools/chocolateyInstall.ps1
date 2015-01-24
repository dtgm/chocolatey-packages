$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
$url = '{{DownloadUrl}}'
Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$unzipLoc"
try {
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		Remove-Item -Recurse (Join-Path "$unzipLoc" (Join-Path "$installFolder" '32'))
	} else {
		Remove-Item -Recurse (Join-Path "$unzipLoc" (Join-Path "$installFolder" '64'))
	}
	Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}
