$packageName = 'combofix'
$url = 'http://download.bleepingcomputer.com/dl/d3e856cc520828f1dc1153e646618827/52d465a6/windows/security/anti-virus/c/combofix/ComboFix.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\ComboFix.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath