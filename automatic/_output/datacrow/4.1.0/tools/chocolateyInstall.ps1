$packageName = 'datacrow'
$installerType = 'exe'
$silentArgs = ''
$url = 'http://www.fosshub.com/genLink/Data-Crow/datacrow_4_1_0_windows_installer.zip'
$checksum = 'e1e6cf5f867de776786ba71d304a5af3809e90f9'
$checksumType = 'sha1'
$validExitCodes = @(0)

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$silentArgs32 = "$toolsDir\chocolateyInstall32.xml"
$silentArgs64 = "$toolsDir\chocolateyInstall64.xml"

$tempDir = Join-Path $env:Temp "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
$tempDir = Join-Path $tempDir $env:packageVersion
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
$zipFile = Join-Path $tempDir 'datacrow_4_1_0_windows_installer.zip'
$installFile32 = "$tempDir\setup32bit.exe"
$installFile64 = "$tempDir\setup64bit.exe"

try {
  # Combatibility - This function has not been merged
  if (!(Get-Command Get-UrlFromFosshub -ErrorAction SilentlyContinue)) {
    Import-Module "$($toolsDir)\Get-UrlFromFosshub.ps1"
  }
  $url = Get-UrlFromFosshub $url

  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$zipFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"

  Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                      -Destination "$tempDir" `
                      -PackageName "$packageName"

  if ((Get-ProcessorBits 64) -and ($env:chocolateyForceX86)) {
    $installFile = $installFile32
    $silentArgs = $silentArgs32
  }
  if ((Get-ProcessorBits 64) -and (-not($env:chocolateyForceX86))) {
    $installFile = $installFile64
    $silentArgs = $silentArgs64
  }
  if (-not(Get-ProcessorBits 64)) {
    $installFile = $installFile32
    $silentArgs = $silentArgs64
  }
  
  Start-ChocolateyProcessAsAdmin -Statements "/c `"$installFile`" $silentArgs" `
                                 -ExeToRun "cmd.exe"
} catch {
  throw $_.Exception
}