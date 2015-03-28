$packageName = 'combofix'
$url = 'http://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\ComboFix.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath