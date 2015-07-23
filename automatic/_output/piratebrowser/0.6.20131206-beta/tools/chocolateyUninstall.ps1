$packageName = 'piratebrowser'

try {
  Remove-Item "$Home\Desktop\Start PirateBrowser.exe.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
