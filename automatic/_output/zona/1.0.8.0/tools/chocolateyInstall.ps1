$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.bestbodymega.com/oGZTaFRdpJiq9gpt0j7yofktWZgst0oiN6ltKc5p_KHAFt1FI6p6inECRkLM7qblI2yy+FFhzpgwG3hypW+xl8qnjoumM+HShA6TlZJxANsnyM1ToyhS95ZqPHYu1qAdNavJyoqZ3bsedEQltu+RWj6HvD3BxA==-CxWAaHR0cHM6Ly9kbC5hcHB6b25hLm9yZy9ab25hU2V0dXBbMnFaYVJdLmV4ZQM='
$checksum = 'a1f7bd67cf7ab07b7c45cbc968cf992b1314f48b9e5bb8b3085b5d22a940a02f'
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