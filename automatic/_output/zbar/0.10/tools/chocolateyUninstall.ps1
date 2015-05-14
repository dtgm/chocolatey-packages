$packageName = 'zbar'
$packageSearch = "ZBar Bar Code Reader"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
try {
  $regObj = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                      'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                      'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                            -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch" }
  
  $regObj | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$installerType" `
                                                 -SilentArgs "$($silentArgs)" `
                                                 -File "$($_.UninstallString)" `
                                                 -ValidExitCodes $validExitCodes }
  Import-Module $unPath
  $regObj | ForEach-Object { Uninstall-ChocolateyPath (Join-Path $_.InstallLocation.Replace('"','') 'bin') }
} catch {
  throw $_.Exception
}