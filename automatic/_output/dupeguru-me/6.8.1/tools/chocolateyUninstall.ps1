try {
  $packageName = 'dupeguru-me'
  $packageSearch = "dupeguru " + "music" + "*"
  $packageVersion = '6.8.1'
  $uninstallPackage = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like $packageSearch -and ($_.Version -eq $packageVersion) }
  $uninstallResults = $uninstallPackage.Uninstall()
} catch {
  throw $_.Exception
}