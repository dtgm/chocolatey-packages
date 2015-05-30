$packageName = '{{PackageName}}'
$packageId = 'sandboxie'

try {
  $fileType = 'EXE'
  $silentArgs = '/S /remove'
  $validExitCodes = @(0)
  $unPathx86 = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
  $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
  $chocoRoot = $env:ChocolateyInstall
  if ($chocoRoot -eq $null) {
    $chocoRoot = "$env:programdata\chocolatey"
  }
  $chocoLib = Join-Path $chocoRoot 'lib'
  if (Test-Path $chocoLib\$packageId.install.[0-9]*) { 
    Remove-Item "$chocoLib\$packageId.[0-9]*" -Force -Recurse -ErrorAction SilentlyContinue
    Write-Debug "Deleted $chocoLib\$packageId.*"
  }
  if (Test-Path $chocoLib\$packageId.[0-9]*) { 
    Remove-Item "$chocoLib\$packageId.[0-9]*" -Force -Recurse -ErrorAction SilentlyContinue
    Write-Debug "Deleted $chocoLib\$packageId.*"
  }
  if (Test-Path $unPathx86\$packageId) {
    $unString = (Get-ItemProperty $unPathx86\$packageId UninstallString).UninstallString
  }
  if (Test-Path $unPath\$packageId) {
    $unString = (Get-ItemProperty $unPath\$packageId UninstallString).UninstallString
  }
  if ($unString | select-string -pattern / ) {
    $unProg = $unString | %{ $_.Split(' /')[0]; }
    Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $unProg -validExitCodes $validExitCodes
  }
} catch {
  throw $_.Exception
}

