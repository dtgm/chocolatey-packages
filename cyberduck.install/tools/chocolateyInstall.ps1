$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/S'

try {
  if (Test-Path HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName) {
    $installedVersion = [Version] (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName DisplayVersion).DisplayVersion
  }
  if ($installedVersion -eq [Version] ''{{PackageVersion}}'') {
    Write-ChocolateySuccess "$packageName" "$packageName" is already installed. Updating the chococolatey database.'
  }
  elseif ($installedVersion -gt [Version] ''{{PackageVersion}}'') {
    Write-ChocolateyFailure "$packageName" "A newer version of $packageName [$($installedVersion)] is already installed. Updating the chocolatey database."
  }
  else {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"
  }
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}