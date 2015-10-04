$packageName = 'IrfanView'
$installerType = 'EXE'
$silentArgs = '/silent'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$unfolder = "IrfanView" #Name of the folder here. No slashs.
$unfile = "iv_uninstall.exe" #Put the name of the uninstall file (with the extension) here. Example: unins000.exe


try {
  $64Bit = 0
  if (Test-Path "${Env:ProgramFiles(x86)}\$unfile") {
    $unpath = "${Env:ProgramFiles(x86)}\$unfolder\$unfile"
  } else {
    $unpath = "$Env:ProgramFiles\$unfolder\$unfile"
	$64Bit = 1
  }
  
  Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes
    
  # IrfanView's Uninstaller leaves behind the EXE and the program files folder. This'll clean it up.
  if ($64Bit -eq 0) {
    Remove-Item "${Env:ProgramFiles(x86)}\$unfolder" -recurse -Force
  } else {
    Remove-Item "${Env:ProgramFiles}\$unfolder" -recurse -Force
  }
   
  # the following is all part of error handling
  # Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
