$packageName = 'aida64-business'
$shortcut_to_remove = "$Home\Desktop\AIDA64 Business.lnk"

try {
  Remove-Item $shortcut_to_remove
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
