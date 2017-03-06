$packageName = 'kodi'
$installerType = 'exe'
$silentArgs = '/S'
$unString = (get-item -path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\kodi*).GetValue('UninstallString')
$validExitCodes = @(0)

Uninstall-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -SilentArgs "$silentArgs" `
                            -File "$unString" `
                            -ValidExitCodes $validExitCodes
                            
$packageName = 'kodi'
$packageSearch = "SuperOrca"
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   {$_.DisplayName -like $packageSearch} `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                               -FileType "$installerType" `
                                               -SilentArgs "$($silentArgs)" `
                                               -File "$($_.UninstallString.Replace('"',''))" `
                                               -ValidExitCodes $validExitCodes}