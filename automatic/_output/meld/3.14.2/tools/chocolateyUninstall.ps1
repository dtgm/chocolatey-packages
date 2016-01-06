$packageName = 'meld'
$packageSearch = "$packageName"
$packageVersion = '3.14.2'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0)
try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" -and $_.Version -eq "$packageVersion" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$installerType" `
                                                 -SilentArgs "$($_.PSChildName) $silentArgs" `
                                                 -ValidExitCodes $validExitCodes }
} catch {
  throw $_.Exception
}