$name   = "handbrake.install"
$url    = "https://handbrake.fr/rotation.php?file=HandBrake-0.10.1-i686-Win_GUI.exe"
$url64  = "https://handbrake.fr/rotation.php?file=HandBrake-0.10.1-x86_64-Win_GUI.exe"
$kind   = "EXE"
$silent = "/S"

Install-ChocolateyPackage -PackageName $name -FileType $kind -SilentArgs $silent -Url $url -Url64 $url64
