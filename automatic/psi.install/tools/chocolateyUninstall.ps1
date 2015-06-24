$packageName = '{{PackageName}}'
$packageSearch = 'Psi'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
try {
  $progEntry = `
    Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                  'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                  'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
    | Where-Object   { $_.PSChildName -like "$packageSearch" }

  $progEntry | ForEach-Object {
    Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                     -FileType "$installerType" `
                                     -SilentArgs "$($silentArgs)" `
                                     -File "$($_.UninstallString)" `
                                     -ValidExitCodes $validExitCodes }

  If (Test-Path $progEntry.PSPath) {
    $progEntry | ForEach-Object { Remove-Item -Path $_.PSPath -Recurse -Force }
  }
} catch {
  throw $_.Exception
}