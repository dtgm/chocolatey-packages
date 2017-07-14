$packageName = 'apktool'
$url = 'https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.2.3.jar'
$checksum = '8d05868a9fdef7ed43742b44f45c10a77263526b236e478cc9602d6a4e053f87'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "apktool.jar"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Write-Verbose "Create batch to start jar executable"
$installBat = Join-Path -Path $toolsDir `
                        -ChildPath "apktool.bat"
if (!(Test-Path $installBat)) {
Write-Verbose "Source: https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat"
'@echo off
if "%PATH_BASE%" == "" set PATH_BASE=%PATH%
set PATH=%CD%;%PATH_BASE%;
java -jar -Duser.language=en "%~dp0\apktool.jar" %1 %2 %3 %4 %5 %6 %7 %8 %9' | 
Out-File -FilePath $installBat `
         -Encoding ASCII
}
Install-BinFile -Name $packageName -Path $installBat
