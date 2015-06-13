$packageName = 'aida64-networkaudit'
$shortcut_to_remove = "$Home\Desktop\AIDA64 Network Audit.lnk"

try {
  Remove-Item $shortcut_to_remove
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
