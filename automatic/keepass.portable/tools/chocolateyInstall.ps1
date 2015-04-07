$name = "keepass.portable"
$url = "http://downloads.sourceforge.net/project/keepass/KeePass%202.x/2.28/KeePass-2.28.zip"

$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) "content"

$gui = Join-Path $content "KeePass.exe.gui"

New-Item $content -Type Directory -Force | Out-Null
New-Item $gui -Type File -Force | Out-Null

Install-ChocolateyZipPackage $name $url $content
