$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.zonarufiledownloads.com/c?x=CtVeGcwCrKcp5fJRuHkOpR0rNN%2FCGe6tORtsOKGuAwg%3D&c=RjZSQN2E2hurnqKknI%2BzVmIE2eTAoUIfhlrHnv0LQsb%2FhHKO5j9aSrLeO08OlH8FPG5rG%2F1FBfJqdbNxVEK0os8vFlNZeqMqv6oXEvl0W1BifB4Rb%2BXjdWDzZsEaVJtg&fallback_url=https:%2F%2Fdl.appzona.org%2FZonaSetup[3Y_B].exe&downloadAs=ZonaSetup[3Y_B].exe'
$checksum = '2fa54fec7fd9e3525e71705650d7e81fd6d1d946'
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