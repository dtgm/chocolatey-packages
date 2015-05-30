$packageName = 'datacrow'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/datacrow/files/Production%20versions/4.0.16/datacrow_4_0_16_windows_installer.zip/download'
$checksum = '5300919ff7d94ff6a3754715c541601be5d947ed'
$checksumType = 'sha1'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$install32File = "$toolsDir\setup32bit.exe"
$install32Opts = "$toolsDir\setup32bit.xml"
$install64File = "$toolsDir\setup64bit.exe"
$install64Opts = "$toolsDir\setup64bit.xml"
$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$zipfile = Join-Path $tempDir "$($packageName)_4_0_15_installer.zip"
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
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    Start-ChocolateyProcessAsAdmin -Statements "/c `"$install64File`" $install64Opts" `
                                   -ExeToRun "cmd.exe"
  } else {
    Start-ChocolateyProcessAsAdmin -Statements "/c `"$install32File`" $install32Opts" `
                                   -ExeToRun "cmd.exe"
  }
} catch {
  throw $_.Exception
}