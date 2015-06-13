$packageName = 'aida64-networkaudit'

try {
  Remove-Item "$Home\Desktop\AIDA64 Network Audit.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
