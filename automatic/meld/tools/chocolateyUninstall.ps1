$packageName = '{{PackageName}}'
$packageSearch = $packageName + "*"
$packageVersion = '{{PackageVersion}}'

try {
  $uninstallPackage = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like $packageSearch -and ($_.Version -eq $packageVersion) }
  $uninstallResults = $uninstallPackage.Uninstall()
} catch {
  throw $_.Exception 
}