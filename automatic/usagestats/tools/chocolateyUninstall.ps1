$packageName = '{{PackageName}}'
$msiPath = Join-Path $Env:TEMP ('chocolatey\' + $packageName + '\' + $packageName + 'Install.msi')
$statements = '/x "' + $msiPath + '" /quiet'
Start-ChocolateyProcessAsAdmin $statements "msiexec"


$packageName = '{{PackageName}}'
$fileType = 'msi'
$silentArgs = ''
$validExitCodes = @(0)
$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
  $unPath = "${Env:ProgramFiles(x86)}"
} else {
  $unPath = "$Env:ProgramFiles"
}
$unString = "$unPath\$packageName\uninstall.exe"
Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
