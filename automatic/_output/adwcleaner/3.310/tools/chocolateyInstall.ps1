$packageName = 'adwcleaner'
$url = 'http://dl2.comss.ru/download/AdwCleaner.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\adwcleaner.exe"
$shortcut_to_modify = "$Home\Desktop\adwcleaner.exe.lnk"
$shortcut_modified = "$Home\Desktop\AdwCleaner.lnk"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath

Rename-Item $shortcut_to_modify $shortcut_modified