$packageName = 'adwcleaner'
$url = 'http://dl2.comss.ru/download/AdwCleaner.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\adwcleaner.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath