try {
	$packageName = '{{PackageName}}'
	$zipFileName = $packageName + 'Install.zip'
	$packagelibPath=$env:chocolateyPackageFolder
	$zipContentFile=(Join-Path $packagelibPath $zipFileName) + ".txt"
	$zipContentFile
	$zipContents=Get-Content $zipContentFile
	foreach ($fileInZip in $zipContents) {
		remove-item -recurse "$fileInZip" -ErrorAction SilentlyContinue
	}
	Write-ChocolateySuccess $packageName
} catch {
		Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}