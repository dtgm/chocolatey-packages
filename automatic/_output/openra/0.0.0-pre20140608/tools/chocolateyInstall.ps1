$id = "openra"
$url = "https://github.com/OpenRA/OpenRA/releases/download/release-20140608/OpenRA-release-20140608.exe"
$kind = "EXE"
$silent = "/S"

Install-ChocolateyPackage $id $kind $silent $url $url64
