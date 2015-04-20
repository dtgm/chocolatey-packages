# generated vars
$packageName = 'regexpeditor'
$url = 'http://sourceforge.net/projects/regexpeditor/files/regexpeditor/Regular%20Expression%20Editor%202.0/regexpEditor-2.0-jar-with-dependencies.jar/download'
$checksum = '6e99ffc4dde3b421211b213ab9e6592c8833d33b'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "regexpeditor.jar"

try {
  # $Env:ChocolateyInstall\helpers\functions
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"

  # create batch to start jar executable
  $batchStartJar = Join-Path -Path $toolsDir `
                             -ChildPath "regexpeditor.bat"
  if (Test-Path ($batchStartJar)) {Remove-Item $batchStartJar -force}
'@echo off
set batDir=%~dp0%
where javaw
if %ErrorLevel% neq 0 (
  echo WARNING: javaw was not found!
  if "%Java_Home%" neq "" (
    echo ERROR: %%JAVA_HOME%% not set. Please set this variable to the directory containing javaw.exe
    pause
    exit /b 1
  )
    start "" "%Java_Home%\bin\javaw.exe" -jar "%batDirregexpeditor.jar %"*
    exit /b %ERRORLEVEL%
  )
  start javaw -jar "%batDir%regexpeditor.jar" *
  exit /b %ERRORLEVEL%
)' | Out-File -FilePath $batchStartJar `
              -Encoding ASCII

# create empty sidecar so shimgen creates shim for GUI rather than console
Set-Content -Path ("$batchStartJar.gui") `
            -Value $null
} catch {
  throw $_.Exception
}