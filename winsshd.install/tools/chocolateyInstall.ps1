$packageName = 'Bitvise SSH Server'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$silentArgs = '-acceptEULA -installDir="%ProgramFiles%\Bitvise SSH Server" -startServer -startBssCtrl'

try {
  if (Test-Path HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName) {
    $installedVersion = [Version] (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName).Version
  }
  if ($installedVersion -eq [Version] ''{{PackageVersion}}'') {
    Write-ChocolateySuccess "$packageName" "$packageName" is already installed. Updating the chococolatey database.'
  }
  elseif ($installedVersion -gt [Version] ''{{PackageVersion}}'') {
    Write-ChocolateyFailure "$packageName" "A newer version of $packageName [$($installedVersion)] is already installed. Updating the chocolatey database."
  }
  else {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
  }
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}