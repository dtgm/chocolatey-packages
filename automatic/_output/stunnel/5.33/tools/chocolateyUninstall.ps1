$packageName = 'stunnel'
$packageSearch = "$packageName*"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$key = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                        -ErrorAction:SilentlyContinue `
     | Where-Object   { $_.DisplayName -like $packageSearch }

$key | ForEach-Object { 
         $unFile = $_.UninstallString -replace "^`"?([^`"]+).*","`$1"
         Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                     -FileType "$installerType" `
                                     -SilentArgs "$silentArgs" `
                                     -File "$unFile" `
                                     -ValidExitCodes $validExitCodes }