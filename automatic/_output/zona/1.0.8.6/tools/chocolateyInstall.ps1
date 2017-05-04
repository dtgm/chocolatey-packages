$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://dl2.appzona.org/ZonaSetup[8K7rI].exe'
$checksum = '66cde83ae06436b2b458b869de2d7e25af7692d743c3f10666477fdb61206b24'
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