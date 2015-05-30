$packageName = 'jrt'
$url = 'http://thisisudax.org/downloads/JRT.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\JRT.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath