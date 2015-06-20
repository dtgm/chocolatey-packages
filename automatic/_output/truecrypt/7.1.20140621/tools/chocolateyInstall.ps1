#try {
  $downUrl = "https://download.truecrypt.ch/current/TrueCrypt%20Setup%207.1a.exe"
  # installer, will assert administrative rights
  Install-ChocolateyPackage 'truecrypt' 'EXE' '/S' "$downUrl" -validExitCodes @(0)
  
  # the following is all part of error handling
#  Write-ChocolateySuccess 'truecrypt'
#} catch {
#  Write-ChocolateyFailure 'truecrypt' "$($_.Exception.Message)"
#  throw 
#}