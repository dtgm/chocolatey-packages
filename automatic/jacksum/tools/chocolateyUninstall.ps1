try {
	$packageName = '{{PackageName}}'
  $chocoBinPath = Join-Path "$Env:ChocolateyInstall" 'bin'
	$batName = "$packageName.bat"	
	Remove-Item (Join-Path "$chocoBinPath" "$batName") -Force
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}