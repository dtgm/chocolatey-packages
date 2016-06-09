$packageName = '{{PackageName}}'
$chocoBinPath = Join-Path "$Env:ChocolateyInstall" 'bin'
$batName = "$packageName.bat"	
Remove-Item (Join-Path "$chocoBinPath" "$batName") -Force