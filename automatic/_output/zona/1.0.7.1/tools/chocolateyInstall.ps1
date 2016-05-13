$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.zonarufiledownloads.com/c?x=HgPr78IguWEi1w7dfxjETU7OhijRHn83IcWus9aiTY8%3D&c=9tznO14Uhrv5Utn88kCQiRyzcYL3L4%2BKXBcqU0u6p0KMjmS8l87fNHWGYAR61R6pzvso%2FJospVw1qPFW0uOdo5B7PoaoLyzvKpqGDfN9J1eT4%2FGuSqyo9qu9%2Bky9KJwM&fallback_url=https:%2F%2Fdl.appzona.org%2FZonaSetup[U1ag].exe&downloadAs=ZonaSetup[U1ag].exe'
$checksum = '68f89759c77ffa65f80abf327a990f938fa6275b'
$checksumType = 'sha1'
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