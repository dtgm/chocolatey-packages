$packageName = 'git-annex'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$unFile = 'C:\Program Files\Git\git-annex-uninstall.exe'

Uninstall-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -SilentArgs "$($silentArgs)" `
                            -File "$($unFile)" `
                            -ValidExitCodes $validExitCodes