try {
  $unpath = "${Env:ProgramFiles}\TrueCrypt\TrueCrypt Setup.exe"
  # installer, will assert administrative rights
  Uninstall-ChocolateyPackage 'truecrypt' 'EXE' '/u' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'truecrypt'
} catch {
  Write-ChocolateyFailure 'truecrypt' "$($_.Exception.Message)"
  throw 
}