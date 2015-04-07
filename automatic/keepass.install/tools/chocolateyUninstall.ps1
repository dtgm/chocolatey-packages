$id     = "keepass.install"
$name   = "KeePass"
$kind   = "EXE"
$silent = "/VERYSILENT"

$tools  = Split-Path $MyInvocation.MyCommand.Definition

. $tools\uninstall.ps1

$uninstaller = Get-Uninstaller -Name $name

Uninstall-ChocolateyPackage -PackageName $id -FileType $kind -SilentArgs $silent -File $uninstaller
