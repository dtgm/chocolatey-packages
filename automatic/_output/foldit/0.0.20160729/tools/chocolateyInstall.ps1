$packageName = 'foldit'
$installerType = 'exe'
$url = 'http://fold.it/portal/files/app/Foldit-win_x86.exe'
$checksum = 'd26e2a46130957eb3fc3cb0aaa7bcb5d007bc8527f157e15997d9e854e17b530'
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