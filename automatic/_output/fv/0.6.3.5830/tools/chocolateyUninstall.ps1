try {
  $packageName = 'fv'
  $packageSearch = "fileverifier" + "*"
  $packageVersion = '0.6.3.5830'
  $uninstallPackage = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like $packageSearch -and ($_.Version -eq $packageVersion) }
  $uninstallResults = $uninstallPackage.Uninstall()
} catch {
  throw $_.Exception
}