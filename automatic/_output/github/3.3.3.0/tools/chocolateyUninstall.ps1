$packageName = 'github'
$packageSearch = $packageName
$installerType = 'exe'
$silentArgs = ''
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "$($packageName)Uninstall.ahk"
$ahkRun = "$Env:Temp\$(Get-Random).ahk"

Copy-Item $ahkFile "$ahkRun" -Force
$ahkProc = Start-Process -FilePath 'AutoHotKey' `
                         -ArgumentList $ahkRun `
                         -PassThru
Write-Debug "$ahkRun start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "$ahkRun process ID:`t$($ahkProc.Id)"
Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageSearch" } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($_.UninstallString -Replace "[^ ]+(.*)",'$1')" `
                                               -File "$($_.UninstallString -Replace "([^ ]+).*",'$1')" `
                                               -ValidExitCodes $validExitCodes }
Remove-Item "$ahkRun" -Force
