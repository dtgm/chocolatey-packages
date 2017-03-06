$packageName = 'ultravnc'
$packageSearch = "$packageName"
$r = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                               'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                               'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                      -ErrorAction:SilentlyContinue `
     | Where-Object { $_.DisplayName -like "$packageSearch" }

$r | ForEach-Object {
  $exe = $_.UninstallString | Select-String -Pattern ".*exe`"?$"
  $msi = $_.UninstallString | Select-String -Pattern "^MsiExec.*$"
  if ($exe) {
    $installerType = 'exe'
    $silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    $validExitCodes = @(0)
    Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                -FileType "$installerType" `
                                -SilentArgs "$($silentArgs)" `
                                -File "$($_.UninstallString.Replace('"',''))" `
                                -ValidExitCodes $validExitCodes
  }
  if ($msi) {
    $installerType = 'msi'
    $silentArgs = '/quiet /qn /norestart'
    $validExitCodes = @(0,3010)
    Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                -FileType "$installerType" `
                                -SilentArgs "$($_.PSChildName) $silentArgs" `
                                -ValidExitCodes $validExitCodes
  }
}