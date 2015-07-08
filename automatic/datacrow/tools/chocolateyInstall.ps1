$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$install32File = "$toolsDir\setup32bit.exe"
$install32Opts = "$toolsDir\setup32bit.xml"
$install64File = "$toolsDir\setup64bit.exe"
$install64Opts = "$toolsDir\setup64bit.xml"
$chocoTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocoTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$zipFile = Join-Path $tempDir "$($packageName)_4_0_15_installer.zip"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$zipFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"
  Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                      -Destination "$toolsDir" `
                      -SpecificFolder "" `
                      -PackageName "$packageName"
  if (Get-ProcessorBits 64) {
    Start-ChocolateyProcessAsAdmin -Statements "/c `"$install64File`" $install64Opts" `
                                   -ExeToRun "cmd.exe"
  } else {
    Start-ChocolateyProcessAsAdmin -Statements "/c `"$install32File`" $install32Opts" `
                                   -ExeToRun "cmd.exe"
  }
} catch {
  throw $_.Exception
}
