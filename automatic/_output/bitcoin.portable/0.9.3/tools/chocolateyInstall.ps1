$packageName = 'bitcoin.portable'
$packageVersion = '0.9.3'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/0.9.3/bitcoin-0.9.3-win.zip'
Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir"
try {
	$installDir = (gci $toolsDir -dir).FullName
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		Remove-Item -Recurse (Join-Path "$installDir" '32')
	} else {
		Remove-Item -Recurse (Join-Path "$installDir" '64')
	}
	Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}