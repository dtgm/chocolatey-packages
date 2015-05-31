$packageName = 'xonotic'

try {
  Remove-Item "$Home\Desktop\xonotic.exe.lnk"
  Remove-Item "$Home\Desktop\xonotic-x64.exe.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
