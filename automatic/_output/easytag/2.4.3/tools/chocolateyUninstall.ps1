$packageName = 'easytag'
$packageSearch = 'EasyTAG 2.4.3'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString.Replace('"',''))" `
                                               -ValidExitCodes $validExitCodes }
