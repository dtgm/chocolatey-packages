$packageName = 'adwcleaner'
$shortcut_to_remove = "$Home\Desktop\AdwCleaner.lnk"

try {
  Remove-Item $shortcut_to_remove
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
