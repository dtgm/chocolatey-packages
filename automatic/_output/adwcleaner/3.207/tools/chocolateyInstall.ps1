$packageName = 'adwcleaner'
$url = 'http://files01.techspot.com/temp/adwcleaner.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\adwcleaner.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath