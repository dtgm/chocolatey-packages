$packageName = 'sandboxie.install'
$packageSearch = 'sandboxie'
$installerType = 'exe'
$silentArgs = '/S /remove'
$validExitCodes = @(0)

$reg = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                  'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                  'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                         -ErrorAction:SilentlyContinue `
        | Where-Object   { $_.DisplayName -like "$packageSearch*" }
$unString = $reg.UninstallString
if ($unString | Select-String -Pattern / ) {
  $unString = $unString | %{ $_.Split(' /')[0]; }
}
Uninstall-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -SilentArgs "$silentArgs" `
                            -File "$unString" `
                            -ValidExitCodes $validExitCodes
