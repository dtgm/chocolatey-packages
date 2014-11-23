$packageName = 'meld'
$packageSearch = $packageName + "*"
$packageVersion = '3.12.0'

try {
	$uninstallPackage = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like $packageSearch -and ($_.Version -eq $packageVersion) }
  $uninstallResults = $uninstallPackage.Uninstall()
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}