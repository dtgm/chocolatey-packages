function Uninstall-ChocolateyPath {
param(
  [string] $pathToUninstall,
  [System.EnvironmentVariableTarget] $pathType = [System.EnvironmentVariableTarget]::User
)
  Write-Debug "Running 'Uninstall-ChocolateyPath' with pathToUninstall:`'$pathToUninstall`'";

  #get the PATH variable
  $envPath = $env:PATH
  #$envPath = [Environment]::GetEnvironmentVariable('Path', $pathType)
  if (!$envPath.ToLower().Contains($pathToUninstall.ToLower())) {
    return
  }

  Write-Host "PATH environment variable has $pathToUninstall in it. Removing..."
  $actualPath = [Environment]::GetEnvironmentVariable('Path', $pathType)

  # escape regex metacharacters, match possible backslash and item separator at
  # the end
  $pathToUninstallRegex = ($pathToUninstall -replace '([\\().])', '\$1') + '\\?(;|$)'

  # remove pathToUninstall from actualPath
  $actualPath = $actualPath -replace "$pathToUninstallRegex", ''

  if ($pathType -eq [System.EnvironmentVariableTarget]::Machine) {
    $psArgs = "[Environment]::SetEnvironmentVariable('Path',`'$actualPath`', `'$pathType`')"
    Start-ChocolateyProcessAsAdmin "$psArgs"
  } else {
    [Environment]::SetEnvironmentVariable('Path', $actualPath, $pathType)
  }

  # remove it from the path in current powershell process as well
  $envPSPath = $env:PATH
  $env:Path = $envPSPath -replace "$pathToUninstallRegex", ''
}