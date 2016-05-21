# generated vars
$packageName = '{{PackageName}}'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'

# static vars
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "{{PackageName}}.jar"

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
                             -ChildPath "{{PackageName}}.bat"
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