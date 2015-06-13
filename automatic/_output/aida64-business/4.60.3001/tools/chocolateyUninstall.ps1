$packageName = 'aida64-business'

try {
  Remove-Item "$Home\Desktop\AIDA64 Business.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
