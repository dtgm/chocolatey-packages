try {
    $packageName = '{{PackageName}}'
    $fileType = 'exe'
    $silentArgs = '/S'
    $unFile = "${Env:ProgramFiles}\digiKam\Uninstall.exe"
    $unFilex86 = "${Env:ProgramFiles(x86)}\digiKam\Uninstall.exe"
    $validExitCodes = @(0)

    if (Test-Path "$unFilex86") {$file = "$unFilex86"}
    if (Test-Path "$unFile") {$file = "$unFile"}
    if ((Test-Path "$unFile") -or (Test-Path "$unFilex86")) {
        Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file -validExitCodes $validExitCodes
    }
} catch {
    throw $_.Exception
}
