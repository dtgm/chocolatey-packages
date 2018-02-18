$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://dl2.appzona.org/ZonaSetup[ErdpX].exe'
$checksum = '46bdb6929d2bc86b8afe7fa16a853a9b347637ced3fab3e4e4ebf7f5c0ba52b9'
$checksumType = 'sha256'
$validExitCodes = @(0) #exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"