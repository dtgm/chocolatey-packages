$packageName = 'peerunity.portable'
$packageVersion = '0.1.1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Peerunity/Peerunity/releases/download/v0.1.1/peerunity-0.1.1-win.zip'
Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir"
try {
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		Remove-Item -Recurse (Join-Path "$toolsDir" '32')
		Remove-Item (Get-ChildItem "$toolsDir\64\" -filter "*-win-setup.exe").fullname
	} else {
		Remove-Item -Recurse (Join-Path "$toolsDir" '64')
		Remove-Item (Get-ChildItem "$toolsDir\32\" -filter "*-win-setup.exe").fullname
	}
	Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}