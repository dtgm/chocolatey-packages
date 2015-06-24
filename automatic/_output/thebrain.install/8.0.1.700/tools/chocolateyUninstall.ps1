try {
  $packageName = 'thebrain.install'
  $packageVersion = '8.0.1.700'
  $packageId = 'thebrain'
  $fileType = 'exe'
  $silentArgs = '-q'
  $validExitCodes = @(0)
  # disable uninstalling associated meta packages via 'cuninst' due to moderation
  ###
  # remove associated metapackage
  #$packageMeta = 'thebrain'
  #$chocoRoot = $Env:ChocolateyInstall
  #if ($chocoRoot -eq $null) {
  #	$chocoRoot = "$Env:ProgramData\chocolatey"
  #}
  #$chocoLib = Join-Path $chocoRoot 'lib'
  #if (Test-Path $chocoLib\$packageMeta.$packageVersion) { 
  #	Remove-Item "$chocoLib\$packageMeta.$packageVersion" -Force -Recurse -ErrorAction SilentlyContinue
  #	Write-Debug "Deleted $chocoLib\$packageMeta.$packageVersion"
  #}
  ###
  # find uninstaller
  $unFile = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageId*"}).UninstallString
  if ($unFile -eq $null) {
    $unFile = (Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageId*"}).UninstallString
  }
  # uninstall package
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes "$validExitCodes"
} catch {
    throw $_.Exception
}

