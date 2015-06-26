function Install-ChocolateyShortcut {
  param(
    [string] $shortcutFilePath,
    [string] $targetPath,
    [string] $workingDirectory,
    [string] $arguments,
    [string] $iconLocation,
    [string] $description
  )

  Write-Debug "Running 'Install-ChocolateyShortcut' with parameters ShortcutFilePath: `'$shortcutFilePath`', TargetPath: `'$targetPath`', WorkingDirectory: `'$workingDirectory`', Arguments: `'$arguments`', IconLocation: `'$iconLocation`', Description: `'$description`'";

  if(!$shortcutFilePath) {
    Write-ChocolateyFailure "Install-ChocolateyShortcut" "Missing ShortCutFilePath input parameter."
    return
  }

  if(!$targetPath) {
    Write-ChocolateyFailure "Install-ChocolateyShortcut" "Missing TargetPath input parameter."
    return
  }

  if(!(Test-Path($targetPath))) {
    Write-ChocolateyFailure "Install-ChocolateyShortcut" "TargetPath does not exist, so can't create shortcut."
    return
  }

  if($iconLocation) {
    if(!(Test-Path($iconLocation))) {
      Write-ChocolateyFailure "Install-ChocolateyShortcut" "IconLocation does not exist, so can't create shortcut."
      return
    }
  }

  if($workingDirectory) {
    if(!(Test-Path($workingDirectory))) {
      Write-ChocolateyFailure "Install-ChocolateyShortcut" "WorkingDirectory does not exist, so can't create shortcut."
      return
    }
  }

  Write-Debug "Creating Shortcut..."

  try {
    $global:WshShell = New-Object -com "WScript.Shell"
      $lnk = $global:WshShell.CreateShortcut($shortcutFilePath)
      $lnk.TargetPath = $targetPath
    $lnk.WorkingDirectory = $workingDirectory
      $lnk.Arguments = $arguments
      if($iconLocation) {
          $lnk.IconLocation = $iconLocation
      }
      $lnk.Description = $description
      $lnk.Save()

    Write-Debug "Shortcut created."

    Write-ChocolateySuccess "Install-ChocolateyShortcut completed"

  }
  catch {
    Write-ChocolateyFailure "Install-ChocolateyShortcut" "There were errors attempting to create shortcut. The error message was '$_'."
  }
}

function Install-BinFile {
  param(
    [string] $name,
    [string] $path
  )

  Write-Debug "Running 'Install-BinFile' for $name with path:`'$path`'";

  $packageBatchFileName = Join-Path $nugetExePath "$name.bat"

  if (Test-Path ($packageBatchFileName)) {Remove-Item $packageBatchFileName -force}
  $path = $path.ToLower().Replace($nugetPath.ToLower(), "..\").Replace("\\","\")
  $path = "%DIR%$($path)"
  $pathBash = $path.Replace("%DIR%..\","`$DIR/../").Replace("\","/")
  Write-Host "Adding $packageBatchFileName and pointing to `'$path`'." -ForegroundColor $Note
"@echo off
SET DIR=%~dp0%
cmd /c ""$path %*""
exit /b %ERRORLEVEL%" | Out-File $packageBatchFileName -encoding ASCII
}

function Install-ChocolateyExplorerMenuItemEx {
param(
  [string]$menuKey,
  [string]$menuLabel,
  [string]$command,
  [string]$iconLocation,
  [ValidateSet('file','directory','background')]
  [string]$type = "file"
)
try {
  Write-Debug "Running 'Install-ChocolateyExplorerMenuItem' with menuKey:'$menuKey', menuLabel:'$menuLabel', command:'$command', type '$type', iconLocation:'$iconLocation'"
  $argName = "%1"
  if($type -eq "file") {
    $key = "*"
  }
  elseif($type -eq "directory") {
    $key="directory"
  }
  elseif($type -eq "background") {
    $key="directory\background"
    $argName="%V"
  } else{
    return 1
  }

  $iconCmd =""
  if($iconLocation) {
    $iconCmd="Set-ItemProperty -LiteralPath 'HKCR:\$key\shell\$menuKey' -Name 'Icon'  -Value '$iconLocation'"
  }
  $elevated = "`
    if( -not (Test-Path -path HKCR:) ) {New-PSDrive -Name HKCR -PSProvider registry -Root Hkey_Classes_Root};`
    if(!(test-path -LiteralPath 'HKCR:\$key\shell\$menuKey')) { new-item -Path 'HKCR:\$key\shell\$menuKey' };`
    Set-ItemProperty -LiteralPath 'HKCR:\$key\shell\$menuKey' -Name '(Default)'  -Value '$menuLabel';`
    if(!(test-path -LiteralPath 'HKCR:\$key\shell\$menuKey\command')) { new-item -Path 'HKCR:\$key\shell\$menuKey\command' };`
    Set-ItemProperty -LiteralPath 'HKCR:\$key\shell\$menuKey\command' -Name '(Default)' -Value '$command \`"$argName\`"';`
	$iconCmd;"

  return $elevated
}
catch {
    $errorMessage = "'$menuKey' explorer menu item was not created $($_.Exception.Message)"
    Write-Error $errorMessage
    throw $errorMessage
  }
}
