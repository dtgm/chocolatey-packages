$id    = "dependencywalker"
$url   = "http://www.dependencywalker.com/depends22_x86.zip"
$url64 = "http://www.dependencywalker.com/depends22_x64.zip"

$tools   = Split-Path -parent $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) "content"
$depends = Join-Path $content "depends.exe"

. $tools\bins.ps1

Install-ChocolateyZipPackage -PackageName $id -Url $url -Url64 $url64 -UnzipLocation $content

New-GuiBin -Name $depends
