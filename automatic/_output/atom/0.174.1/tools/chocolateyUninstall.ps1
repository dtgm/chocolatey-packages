$localApplicationData = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::LocalApplicationData))
$atomFolder = Join-Path $localApplicationData "atom"
$updateExe = Join-Path $atomFolder "Update.exe"

Start-Process -FilePath $updateExe -ArgumentList "--uninstall" -Verb "RunAs" -Wait
