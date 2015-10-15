$packageName = 'windowsrepair'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.tweaking.com/files/setups/tweaking.com_windows_repair_aio_setup.exe'
$validExitCodes = @(0) #exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes