$packageName = 'stunnel'
$packageVersion = '5.07'
$packageSearch = $packageName + "*"
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	$unFile = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like $packageSearch -and ($_.Version -eq $packageVersion) }
  #$uninstallResults = $uninstallPackage.Uninstall()
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes "$validExitCodes"
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}