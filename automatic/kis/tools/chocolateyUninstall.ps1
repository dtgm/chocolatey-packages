$packageName = '{{PackageName}}'
$packageSearch = "Kaspersky Internet Security"
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REMOVE=ALL'
$validExitCodes = @(0,3010)

$reg = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                        -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like $packageSearch }
$reg.PSChildName | ForEach-Object { $_ -match '{[\dA-F-]+}' }
Uninstall-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -SilentArgs "$($Matches.Values) $silentArgs" `
                            -ValidExitCodes $validExitCodes