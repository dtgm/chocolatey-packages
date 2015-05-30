$packageName = 'adwcleaner'
$url = 'http://general-changelog-team.fr/en/downloads/finish/20-outils-de-xplode/2-adwcleaner'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\adwcleaner.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath