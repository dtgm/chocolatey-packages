###  MSI; match name  ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName"
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch*" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($_.PSChildName) $silentArgs" `
                                               -ValidExitCodes $validExitCodes }


### MSI; match name AND version ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName"
$packageVersion = '{{PackageVersion}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch*" -and $_.DisplayVersion -eq "$packageVersion" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($_.PSChildName) $silentArgs" `
                                               -ValidExitCodes $validExitCodes }

###  EXE; INNO  ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName"
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch*" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString)" `
                                               -ValidExitCodes $validExitCodes }


###  EXE; NSIS  ###   
$packageName = '{{PackageName}}'
$packageSearch = "$packageName"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch*" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString)" `
                                               -ValidExitCodes $validExitCodes }


### EXE; install4j ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName"
$installerType = 'exe'
$silentArgs = '-q'
$validExitCodes = @(0)
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch*" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString)" `
                                               -ValidExitCodes $validExitCodes }



if ( $true ) { "y" } else { "b" }


### w/ AHK 
# Do you want to remove...
$packageName = '{{PackageName}}'
$packageSearch = "$packageName"
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force
try {
  Start-Process $ahkExe $ahkRun
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$fileType" `
                                                 -SilentArgs "$($silentArgs)" `
                                                 -File "$($_.UninstallString)" `
                                                 -ValidExitCodes $validExitCodes }
  Remove-Item "$ahkRun" -Force -ErrorAction SilentlyContinue
} catch {
  throw $_.Exception
}
#uninstall.ahk
#NoEnv
SetTitleMatchMode, 1  ;begins
WinWait, EmulationStation Uninstall ahk_class #32770, Do you want to, 120
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp


###  Archived; ZIP  ###
# chocolateyUninstall.ps1 probably not necessary

###  Archived; RAR  ###
# chocolateyUninstall.ps1 probably not necessary

###  Uncompressed or unarchived binary  ###
# chocolateyUninstall.ps1 not necessary

###  Compressed executable, extracts to current directory; ZIP  ###
# chocolateyUninstall.ps1 not necessary

###  Compressed executable, extracts to sub-directory; ZIP  ###
# chocolateyUninstall.ps1 not necessary

###  Archived; ZIP  ###
# chocolateyUninstall.ps1 probably not necessary


###  Archived; RAR  ###
# command-line version of 7zip is 7za, provided by 7zip.commmandline, 7za does not support rar
# rar archives require 7z which is provided by 7zip.install
# add to abcprog.nuspec: <dependencies><dependency packagename="7zip.install" /></dependencies>


# MetaPackage
$warningPreference = "Continue"
$chocoLib = Join-Path $env:ChocolateyInstall "lib"
if (Test-Path -PathType Container (Join-Path $chocoLib '{{PackageName}}.*')) {
  Write-Warning "Uninstall NOT complete."
  Write-Host 
@"
  This package is a metapackage; a chocolatey feature not yet fully implemented.
  To retain future compatibility this package does not uninstall the dependent
  package it points to as designated with *.install or *.portable.`n
"@
  Write-Warning "To finish removing the program installed by package {{PackageName}}, please also run the command:"
  Write-Host " `n`tchoco uninstall " -NoNewLine
  $list = (Get-ChildItem -Directory $chocoLib\{{PackageName}}.*).Name
  foreach ($i in $list) {
    Write-Host "$i " -NoNewLine
  }
  Write-Host "-y"
}