try {
  $packageName = '{{PackageName}}'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $unPath = Join-Path "$Env:ProgramFiles" "$packageName"
  $unPathx86 = Join-Path "${Env:ProgramFiles(x86)}" "$packageName"
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    $unString = Join-Path "$unPathx86" "Uninstall.exe"
    } else {
    $unString = Join-Path "$unPath" "Uninstall.exe"
  }
  if (!$unString) {
    Write-Warning "$packageName is not installed or installer may have changed it's install path."
    Write-Warning "Please send message to package maintainers @ https://chocolatey.org/packages/$packageName/ContactOwners"
    throw
  }
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}