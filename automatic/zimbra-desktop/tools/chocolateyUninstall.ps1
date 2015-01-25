try {
	$packageName = '{{PackageName}}'
	$packageSearch = 'Zimbra Desktop'	
	$app = Get-WmiObject -class win32_product | Where-Object {$_.Name -like "$packageSearch"}
	if ($app) {
	  $msiArgs = $('/x' + $app.IdentifyingNumber + ' /quiet /qn /norestart')
	  Start-ChocolateyProcessAsAdmin $msiArgs 'msiexec'
	  Write-ChocolateySuccess $packageName
	}
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}