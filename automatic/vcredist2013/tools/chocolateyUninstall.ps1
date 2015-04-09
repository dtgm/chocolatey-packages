$packageName = 'vcredist2013'
$packageSearch = 'Microsoft Visual C++ 2013 Redistributable'
$installerType = 'exe'
$silentArgs = '/uninstall /quiet'
$validExitCodes = @(0)
try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" } `
  | ForEach-Object { 
    #if ( $_.UninstallString | Select-String -Pattern '"\s+/') {
      $unString = "$_.UninstallString" | %{ $_.Split('"')[1]; }
    #  Write-Host "Removed switches from uninstall string."
    #} else {
    #  $unString = "$_.UninstallString"
    #}
    Write-Host "-------------------------------"
    Write-Host "VARIABLE unString is  $unString"
    Write-Host "VARIABLE unString is  $($unString)"
    Write-Host "VARIABLE unString is  `"$unString`""
    Write-Host "VARIABLE unString is  `'$unString`'"
    Write-Host "-------------------------------"
    Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                -FileType "$installerType" `
                                -SilentArgs "$silentArgs" `
                                -File "$unString" `
                                -ValidExitCodes $validExitCodes
  }
} catch {
  throw $_.Exception
}