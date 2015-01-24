$packageName = 'bitcoin.portable'
$packageVersion = '0.9.3'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
$url = 'https://bitcoin.org/bin/0.9.3/bitcoin-0.9.3-win.zip'
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
