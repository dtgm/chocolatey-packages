$packageName = 'apktool'
$url = 'https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.2.4.jar'
$checksum = '1f1f186edcc09b8677bc1037f3f812dff89077187b24c8558ca2a89186ea3251'
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