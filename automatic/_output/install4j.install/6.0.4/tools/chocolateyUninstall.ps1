$packageName = 'install4j.install'
$packageSearch = "install4j.install 6.0.4"
$installerType = 'exe'
$silentArgs = '-q'
$validExitCodes = @(0)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString)" `
                                               -ValidExitCodes $validExitCodes }