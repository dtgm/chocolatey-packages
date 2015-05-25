$packageName = 'foldit'
$installerType = 'exe'
$url = 'http://fold.it/portal/files/app/Foldit-win_x86.exe'
$checksum = 'b4ef598e84a067cf2b65ab2be1d48bd3a2b674ba'
$checksumType = 'sha1'
$validExitCodes = @(0)
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot "Foldit"
$silentArgsBase = '/S /D='
$silentArgs = $($silentArgsBase + '"' + $installPath + '"')

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"