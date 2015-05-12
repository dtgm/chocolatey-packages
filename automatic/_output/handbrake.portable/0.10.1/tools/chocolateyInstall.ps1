$name  = "handbrake.portable"
$url   = "https://handbrake.fr/rotation.php?file=HandBrake-0.10.1-i686-Win_CLI.zip"
$url64 = "https://handbrake.fr/rotation.php?file=HandBrake-0.10.1-x86_64-Win_CLI.zip"

$tools   = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) "content"

Install-ChocolateyZipPackage -PackageName $name -Url $url -Url64 $url64 -UnzipLocation $content
