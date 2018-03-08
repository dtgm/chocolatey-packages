$packageName = 'windowsrepair'
$packageSearch = "Tweaking.com"
$validExitCodes = @(0)

$reg = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                        -ErrorAction:SilentlyContinue `
       | Where-Object   { $_.DisplayName -like "$packageSearch*" }

$unString = ($reg.UninstallString -Split '\" \"')[0] + '"'
$silentArgs = '"' + ($reg.UninstallString -Split '\" \"')[1] + ' /S'
#  $silentArgs += ' /S'

# not working
#$installerType = 'exe'
#Uninstall-ChocolateyPackage -PackageName "$packageName" `
#                              -FileType "$installerType" `
#                              -SilentArgs "& $silentArgs" `
#                              -File "& $unString" `
#                              -ValidExitCodes $validExitCodes

Start-ChocolateyProcessAsAdmin "& $unString $silentArgs" -ValidExitCodes $validExitCodes