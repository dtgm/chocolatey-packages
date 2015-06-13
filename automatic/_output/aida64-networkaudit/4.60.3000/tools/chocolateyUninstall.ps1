$packageName = 'aida64-networkaudit'

try {
  Remove-Item "$Home\Desktop\aida64.exe.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
