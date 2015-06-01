$packageName = 'avginternetsecurity'
$packageSearch = "AVG"
$installerType = 'exe'
$validExitCodes = @(0)

$reg = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                        -ErrorAction:SilentlyContinue `
       | Where-Object   { $_.PSChildName -like "$packageSearch*" }

$unString = ($reg.UninstallString -Split ' /')[0]
$silentArgs = '/Appmode=Setup /uninstall /uilevel=Silent /dontrestart'

Uninstall-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$silentArgs" `
                              -File "$unString" `
                              -ValidExitCodes $validExitCodes