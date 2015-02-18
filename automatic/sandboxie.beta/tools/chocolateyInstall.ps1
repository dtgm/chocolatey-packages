$packageName = '{{PackageName}}'
$packageId = 'sandboxie'
$installerType = 'EXE'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgsInstall = '/install /S /D=C:\Program Files\Sandboxie'
$silentArgsUpgrade = '/upgrade /S'
$chocoRoot = $env:ChocolateyInstall
if ($chocoRoot -eq $null) {
$chocoRoot = "$env:programdata\chocolatey"
}
if (Test-Path $chocoRoot\lib\$packageName.install.*) { 
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsUpgrade" "$url" "$url64"
} else {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsInstall" "$url" "$url64"
}
