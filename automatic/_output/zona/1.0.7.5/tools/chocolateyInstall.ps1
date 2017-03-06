$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.heartcenterfactory.com/bwcwMAvEoM9Gy3BS4OytYXm0jCHPu5MZa2aa7t5M8ZGJ2vtE_SSOiFabwmQ_mi_2uexe_Hyi5053rEXl0bg3ODHhEYAYv344t5KfpGJOj9TANurf_DvQCSPyJIvrUzJsP7TTRnmLPli2Yyj_+G_5uftipJ6M519iGD7ATXTR27ICSkasvtY=-CxWAaHR0cHM6Ly9kbC5hcHB6b25hLm9yZy9ab25hU2V0dXBbMkVOdVNdLmV4ZQM='
$checksum = '28f29581cb9c398d33f35b037c6c33c5e0ed5e8ea71d76dc76f37d81db5c9f24'
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