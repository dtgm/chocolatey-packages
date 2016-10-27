$packageName = 'foldit'
$installerType = 'exe'
$url = 'http://fold.it/portal/files/app/Foldit-win_x86.exe'
$checksum = 'aa8393ebddc226a9623f214580cdbe79db942df7469b0838f1783a050d26ce68'
$checksumType = 'sha256'
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