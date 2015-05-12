$id     = "handbrake.install"
$name   = "Handbrake"
$kind   = "EXE"
$silent = "/S"

$tools  = Split-Path $MyInvocation.MyCommand.Definition

. $tools\uninstall.ps1

Uninstall-ChocolateyPackage -PackageName $id -FileType $kind -SilentArgs $silent -File (Get-Uninstaller -Name $name)
