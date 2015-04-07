$id     = "keepass.install"
$url    = "http://downloads.sourceforge.net/project/keepass/KeePass%202.x/2.28/KeePass-2.28-Setup.exe"
$kind   = "EXE"
$silent = "/VERYSILENT"

Install-ChocolateyPackage -PackageName $id -FileType $kind -SilentArgs $silent -Url $url
